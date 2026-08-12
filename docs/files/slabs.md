# slabs.c

Subsystem: Storage engine. See `../architecture.md` section 5 (the slab allocator)
and `slabs_mover.md` / `slab_automove.md` for page reassignment.

## L1: Purpose and services

`slabs.c` is memcached's memory allocator. Rather than call `malloc` per item
(which fragments memory and is slow), it manages memory in large **pages** (default
1 MB) cut into fixed-size **chunks**. Chunks are grouped into **slab classes**: class
sizes start near the size of an item header plus a small key/value and grow by a
factor (default 1.25) up to a maximum. To store an object you pick the smallest
class whose chunk fits, which bounds fragmentation to at most one growth factor of
slack per item.

Services:
- Sizing: `slabs_clsid` (which class fits an object), `slabs_size`,
  `slabs_class_check`.
- Allocation: `slabs_alloc` / `slabs_free` (thread-safe), plus the `do_*` cores.
- Init/preallocation: `slabs_init`, `slabs_preallocate`, `slabs_prefill_global`.
- Stats: `slabs_stats`, `fill_slab_stats_automove`, `global_page_pool_size`.
- Page-mover support: `slabs_peek_page`, `slabs_finalize_page_move`,
  `do_slabs_unlink_free_chunk`, `slabs_pick_any_for_reassign`, and the
  lock helpers `slabs_mlock`/`slabs_munlock`.
- Runtime tuning: `slabs_adjust_mem_limit`.

Callers: `items.c` (item allocation), `slabs_mover.c` / `slab_automove*.c` (page
reassignment), `storage.c` and stats code.

## L2: Data structures

- **`slabclass_t slabclass[MAX_NUMBER_OF_SLAB_CLASSES]`**: one descriptor per size
  class. Fields: `size` (chunk size), `perslab` (chunks per page), `slots` +
  `sl_curr` (the free-chunk list and its length), and `slab_list` + `slabs` +
  `list_size` (the array of allocated pages for this class). Index `0` is
  `SLAB_GLOBAL_PAGE_POOL`, a reserve of empty pages not yet assigned to a class.
- **Global memory bookkeeping**: `mem_limit` (max bytes), `mem_malloced` (bytes
  used), `mem_base`/`mem_current`/`mem_avail` (for the preallocated-large-chunk
  mode), `power_largest` (highest active class id), `mem_limit_reached` (a hint for
  the LRU maintainer).
- **`slabs_lock`**: a single mutex guarding all of the above. The `do_*` functions
  assume it is held; the public wrappers take it.

The free list threads through the chunks themselves: a free chunk is an `item` with
`it_flags == ITEM_SLABBED` linked by its `next`/`prev` pointers. So the free list
costs no extra memory.

## L3: Functions

### Sizing
- `unsigned int slabs_clsid(size_t size)` - return the class id whose chunk fits
  `size`, `0` if too large. Called on every store to decide where an item goes.
- `unsigned int slabs_size(int clsid)` / `bool slabs_class_check(int id)` -
  accessors for a class's chunk size and validity.

### Init and page creation
- `void slabs_init(size_t limit, double factor, bool prealloc, const uint32_t *slab_sizes, void *mem_base_external, bool reuse_mem)` -
  compute the class sizes (either from the growth `factor` or an explicit
  `slab_sizes` array), set the memory limit, and optionally preallocate. Called once
  at startup. Handles hugepage/preallocated and restart-reuse modes.
- `static void *alloc_large_chunk(size_t limit)` - allocate the one big backing
  region for prealloc mode, using transparent hugepages on Linux / superpages on
  FreeBSD when available, else `malloc`.
- `static void slabs_preallocate(unsigned int maxslabs)` - make one page in each
  class at startup so users are not surprised by out-of-memory before any page
  exists.
- `void slabs_prefill_global(void)` - fill the global page pool up to the memory
  limit (used by restart/reuse paths).
- `static int do_slabs_newslab(unsigned int id)` - get a page (from the global pool
  or fresh memory), wipe it, split it into free chunks for class `id`, and record
  it. Returns 1, or 0 if out of memory.
- `static void split_slab_page_into_freelist(char *ptr, unsigned int id)` - carve a
  page into `perslab` chunks and push each onto the class free list.
- `do_grow_slab_list` / `slabs_grow_slab_list` - enlarge a class's `slab_list`
  array when it fills (doubling, starting at 16).

### Allocate / free
- `void *slabs_alloc(unsigned int id, unsigned int flags)` / `static void *do_slabs_alloc(...)` -
  return one free chunk of class `id`, creating a new page first if the free list is
  empty (unless `SLABS_ALLOC_NO_NEWPAGE`). Clears `ITEM_SLABBED` and sets refcount
  to 1 on the returned chunk. Returns the chunk or `NULL` when out of memory.
- `void slabs_free(void *ptr, unsigned int id)` / `static void do_slabs_free(...)` /
  `static void do_slabs_free_chunked(item *it)` - return a chunk to its class free
  list; the chunked variant handles large items spread across multiple linked
  chunks.
- `static void *memory_allocate(size_t)` / `static void memory_release(void)` - the
  low-level "get bytes" and "give pages back when over limit" helpers, aware of both
  the malloc and preallocated-region modes.

### Stats and introspection
- `void slabs_stats(ADD_STAT, void *c)` / `static void do_slabs_stats(...)` - emit
  per-class stats (chunk size, pages, used/free chunks, per-op hit counters).
- `void fill_slab_stats_automove(slab_stats_automove *am)` - snapshot per-class
  counts for the automover.
- `unsigned int global_page_pool_size(bool *mem_flag)` /
  `unsigned int slabs_available_chunks(...)` / `int slabs_page_count(...)` -
  various counts used by the mover and stats.

### Page-mover support and tuning
- `void *slabs_peek_page(...)` - return the first page of a class (mover picks a page
  to relocate).
- `void slabs_finalize_page_move(sid, did, page)` - complete moving `page` from
  source class `sid` to destination `did` (or the global pool), re-splitting it into
  the destination's chunk size.
- `void do_slabs_unlink_free_chunk(id, item *it)` - detach a specific free chunk from
  a class list (used while relocating a page). Lock must be held.
- `int slabs_pick_any_for_reassign(unsigned int did)` - choose a source class with a
  spare page to feed `did`.
- `unsigned int slabs_fixup(char *chunk, int border)` - used by restart to reattach
  memory: put a page back on the right class list and restore free chunks.
- `bool slabs_adjust_mem_limit(size_t)` - change the memory cap at runtime (only in
  non-prealloc mode).
- `int slabs_locked_callback(slabs_cb cb, void *arg)`, `slabs_mlock`, `slabs_munlock`
  - run a callback (or a code section) while holding the slabs lock, so item-flag
  bits that require the slabs lock can be changed safely.

## L4: Notable bodies

### `slabs_clsid`
Linear scan from `POWER_SMALLEST` upward until a class whose `size` is at least the
requested size. Returns `0` if the object exceeds `item_size_max`, or
`power_largest` if it is bigger than every class but still allowed (it will be
stored chunked). The scan is cheap because there are only ~18-64 classes.

### `do_slabs_alloc`
The allocation hot path (under the slabs lock): if the class free list is empty and
new pages are allowed, call `do_slabs_newslab` to create one; then pop the head of
the free list, clear its `ITEM_SLABBED` flag, set `refcount = 1` (done here, not
later, so the slab mover's "is this chunk free?" check is race-free), decrement
`sl_curr`, and return it. Returns `NULL` only when no memory could be obtained.

### `do_slabs_newslab`
Decides the page length (full `slab_page_size` when reassignment/large chunks are
in play, else exactly `size * perslab`). Enforces the memory limit unless the
global pool can supply a page. Gets memory (global pool first, then
`memory_allocate`), **always memset-wipes it** (important in restart mode where
mmap memory may still hold old data), splits it into the free list, and records the
page.

### `do_slabs_free_chunked`
Large items span a header chunk plus a chain of `item_chunk`s. Freeing walks that
chain, returning the header to its original class (`chunk->orig_clsid`) and each
data chunk to its own class free list, marking each `ITEM_SLABBED`. This is why
freeing a big value can touch several class free lists.

### `slabs_finalize_page_move`
Completes a page relocation initiated by the mover: removes the page from the source
class's `slab_list` (shifting the array down), appends it to the destination, and
either re-splits it into the destination's chunk size or, if moving to the global
pool, wipes just the header and possibly releases memory. All under the slabs lock
so no allocation sees a half-moved page.

The consistent pattern in this file: every public entry takes `slabs_lock` and
delegates to a `do_` core, so the locking is centralized and the internal helpers
can call each other without re-locking.
