# items.c

Subsystem: Storage engine. See `../architecture.md` section 5, and `assoc.md`
(hash table) and `slabs.md` (allocator) which this file ties together. Locking
wrappers are in `thread.md`. Critical-path file.

## L1: Purpose and services

`items.c` implements the **item** - the object that holds one key/value pair - and
the **LRU** policy that decides which items to keep and which to evict. It sits
directly above the allocator (`slabs.c`) and the hash table (`assoc.c`): allocating
an item pulls memory from a slab class; linking an item inserts it into both the
hash table and an LRU queue; getting an item looks it up and bumps its LRU
position; eviction pulls victims from the tail of an LRU.

Most functions here are the `do_*` cores that assume the caller already holds the
item lock (the public, lock-taking wrappers live in `thread.c`). Services:
- **Item lifecycle**: `do_item_alloc`, `item_free`, `do_item_link`,
  `do_item_unlink`, `do_item_remove`, `do_item_replace`, `do_item_update`.
- **Lookup**: `do_item_get`, `do_item_touch`, `do_item_bump`.
- **LRU management**: the segmented HOT/WARM/COLD/TEMP queues, `lru_pull_tail`
  (find and reclaim a victim), and the **LRU maintainer thread** that rebalances
  the queues.
- **Expiry/flush**: `item_flush_expired`, `item_is_flushed`.
- **Stats and dumps**: `item_stats*`, `item_cachedump`, `fill_item_stats_automove`.

## L2: Data structures

- **`item`** (`struct _stritem`, in `memcached.h`): the header - LRU `next`/`prev`,
  hash-chain `h_next`, access `time`, `exptime`, `nbytes`, `refcount`, `it_flags`
  (ITEM_LINKED, ITEM_CAS, ITEM_ACTIVE, ITEM_FETCHED, ITEM_SLABBED, ITEM_CHUNKED,
  ITEM_HDR, ...), `slabs_clsid`, and `nkey` - followed **inline** by the optional
  CAS value, the key, an optional flags suffix, and the value bytes. Packing all of
  this into one allocation is what makes items cheap.
- **`heads[]` / `tails[]`** (per LRU id): the doubly linked LRU queue endpoints.
  There is one queue per (slab class, LRU-segment) pair. The segment is encoded in
  the high bits of `slabs_clsid` via `HOT_LRU`/`WARM_LRU`/`COLD_LRU`/`TEMP_LRU`.
- **`sizes[]` / `sizes_bytes[]`**: item and byte counts per LRU, kept in sync on
  link/unlink for stats and the automover.
- **`itemstats[]`**: per-class LRU counters (evictions, reclaims, moves between
  segments, tail repairs, out-of-memory).
- **`lru_locks[]`**: one mutex per LRU queue, protecting the `next`/`prev` chain.
  Distinct from the item locks in `thread.c` (which protect `h_next`/refcount).
- **`lru_bump_buf`**: a per-worker lock-free-ish buffer of "please bump this item"
  requests, so a `get` on a COLD item does not have to take the LRU lock on the hot
  path (the maintainer applies the bumps later).

The two-lock split is the crux of item concurrency: the **item lock** (from
`thread.c`, keyed by hash) guards the hash chain and refcount; the **LRU lock**
(here, keyed by LRU id) guards the LRU chain. Some operations need both, and the
code is careful about the order.

## L3: Functions (grouped)

### Allocation
- `item *do_item_alloc(key, nkey, flags, exptime, nbytes)` - build a new (unlinked)
  item: compute its total size, pick a slab class, pull memory, and fill the header,
  key, and flags. Chooses the initial LRU segment. Returns the item or `NULL` on
  out-of-memory. Called via `item_alloc` from the store path.
- `item *do_item_alloc_pull(ntotal, id)` - the retry loop that actually gets memory
  from `slabs_alloc`, invoking `lru_pull_tail` to evict/reclaim when the class is
  full.
- `static size_t item_make_header(...)` - compute the item's total byte size and the
  flags suffix.
- `void item_free(item *it)` - return a fully unreferenced, unlinked item to the
  slab allocator.
- `bool item_size_ok(...)` - would an item of this size fit in any slab class.

### Linking (hash table + LRU together)
- `int do_item_link(item *it, hv, cas)` - make an item live: set ITEM_LINKED and a
  CAS, insert into the hash table (`assoc_insert`), push onto the class LRU head
  (`item_link_q`), bump refcount, update stats. Returns 1.
- `void do_item_unlink(item *it, hv)` / `do_item_unlink_nolock(...)` - remove from
  hash table and LRU and drop the link reference; the `nolock` variant is for
  callers already holding the LRU lock.
- `static void do_item_link_q(item *)` / `do_item_unlink_q(...)` - the raw LRU
  insert/remove at the head/tail (assume LRU lock held); `item_link_q` /
  `item_unlink_q` take the LRU lock for you.
- `void do_item_remove(item *it)` - drop a refcount, free the item if it reaches 0.
- `int do_item_replace(old, new, hv, cas)` - atomically swap one linked item for
  another.

### Lookup and LRU bump
- `item *do_item_get(key, nkey, hv, t, do_update)` - the read core: find in the hash
  table, refcount it, lazily expire/flush it if dead, and (if `do_update`) bump its
  LRU position. Returns the item (refcount held) or `NULL`. Detailed in L4.
- `void do_item_bump(t, it, hv)` - promote an item's activity: mark FETCHED, then
  ACTIVE on a second hit, moving COLD items toward WARM (possibly via the async
  bump buffer).
- `item *do_item_touch(...)` - `do_item_get` plus updating `exptime`.
- `void do_item_update(item *it)` - refresh access time / relink toward the warm end.

### LRU maintenance and eviction
- `int lru_pull_tail(orig_id, cur_lru, total_bytes, flags, max_age, ret_it)` - the
  workhorse: walk up from an LRU tail looking for an item to evict, reclaim
  (expired), or migrate between segments. Returns whether it removed something.
  Detailed in L4.
- `static int lru_maintainer_juggle(int slabs_clsid)` - rebalance HOT/WARM/COLD for
  one class by pulling tails according to segment size ratios.
- `static void *lru_maintainer_thread(void *)` - the background loop that juggles
  every class, applies queued async bumps (`lru_maintainer_bumps`), and coordinates
  with the crawler. `start_`/`stop_lru_maintainer_thread` and
  `lru_maintainer_pause`/`resume` control it.
- `static bool lru_bump_async(...)` / `item_lru_bump_buf_create()` - the per-worker
  deferred-bump mechanism.

### Expiry, flush, stats
- `void item_flush_expired(void)` / `int item_is_flushed(item *)` - implement the
  `flush_all` command by comparing item time against the flush epoch.
- `char *item_cachedump(...)` - dump keys from one class LRU (for `stats cachedump`).
- `item_stats`, `item_stats_totals`, `item_stats_sizes*`,
  `fill_item_stats_automove` - assorted stats reporting and the automover snapshot.

## L4: Notable bodies

### `do_item_alloc`
1. Reject impossibly small `nbytes`. Compute `ntotal` (header + key + suffix +
   value, plus 8 bytes if CAS is on) and the slab class `id`. Return `NULL` if it
   fits nowhere.
2. **Large-item (chunked) path.** If `ntotal` exceeds `slab_chunk_size_max`, pull a
   small *header* from one class and mark it `ITEM_CHUNKED`; the value's data chunks
   are allocated lazily while the upload streams in. The header is linked into the
   larger class's LRU for accounting even though its memory came from a different
   class.
3. Otherwise pull one chunk of class `id` via `do_item_alloc_pull` (which evicts via
   `lru_pull_tail` if needed). On failure, bump the class's `outofmemory` stat.
4. **Choose the LRU segment.** New items go to TEMP (if temporary-TTL and temp LRU
   enabled), else HOT (segmented mode), else COLD (compat mode). The segment is
   OR'd into `slabs_clsid`.
5. Initialize header fields, `memcpy` the key and flags into the inline region, and
   for chunked items initialize the embedded `item_chunk`. The item is returned
   **unlinked** with refcount 1 (seeded by `slabs_alloc`); the caller links it after
   the value is read.

### `do_item_link` / `do_item_unlink` (the two-structure invariant)
Link order: set flags/time, assign a CAS, `assoc_insert` (into the hash table),
`item_link_q` (into the LRU), then `refcount_incr` for the link reference. Unlink is
the mirror image: clear ITEM_LINKED, update stats, `assoc_delete`, `item_unlink_q`,
`do_item_remove`. Keeping these two structures in lockstep is the reason both the
item lock and LRU lock exist; an item is always either in both or neither.

### `do_item_get` (lazy expiration)
Find via `assoc_find` and immediately `refcount_incr` so the item cannot be freed
underneath the caller. Then three cases: if the item was flushed (`item_is_flushed`)
or its `exptime` has passed, unlink it, tell storage to delete any disk copy
(`STORAGE_delete`), remove it, and return `NULL` (counting a flushed/expired miss);
otherwise, optionally `do_item_bump` and return the live item with its refcount
held. Expiration is *lazy* - dead items are only reaped when looked at (or by the
crawler), which keeps the get path branch-light.

### `do_item_bump` (segmented LRU promotion)
An item must be hit twice to become ACTIVE: the first hit sets FETCHED, the second
sets ACTIVE. For non-COLD items an active bump just refreshes `time`; for COLD items
it queues an async move toward WARM through the per-worker bump buffer, so the read
path avoids taking the LRU lock. The ACTIVE flag is set before the async enqueue and
cleared if the enqueue fails, to avoid a race where an item is marked active but
never actually moved.

### `lru_pull_tail` (eviction / reclaim / juggle)
Walks up to a few items from the tail of LRU `orig_id | cur_lru`. For each candidate
it `item_trylock`s the key (so no one can grab a new reference) and checks the
refcount: exactly 2 means only the LRU and this walk hold it, so it is reclaimable.
It then handles, in order: crawler placeholder items (skip), reference-locked items
(optionally "tail repair" a leaked refcount after a timeout), expired/flushed items
(reclaim them), and finally live items (evict, or migrate to another segment
depending on `flags`/`max_age`). The bounded `tries` and trylock make this safe to
run concurrently with readers without ever blocking them. This function is where
memcached's "least recently used gets evicted" actually happens.

### The LRU maintainer thread
`lru_maintainer_thread` periodically calls `lru_maintainer_juggle` per class to keep
the HOT/WARM/COLD proportions in balance (moving cooled items down, promoting active
ones), drains the async bump buffers, and nudges the crawler to reclaim expired
items. It is paused by `pause_threads(PAUSE_ALL_THREADS)` during structural changes.
This background rebalancing is what lets the get path stay cheap: expensive LRU
bookkeeping is deferred here instead of done inline on every request.
