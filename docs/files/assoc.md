# assoc.c

Subsystem: Storage engine. See `../architecture.md` section 5 (the hash table) and
`hash.md` (the hash function this table uses).

## L1: Purpose and services

`assoc.c` is memcached's hash table: the structure that maps a key to the `item`
holding its value. Given a key's hash value (`hv`, produced by the `hash` function
in `hash.c`), it finds, inserts, and deletes items in O(1) on average.

It also owns the background **hash table expansion**: as the number of stored items
grows, the table is doubled so chains stay short. Expansion is incremental and runs
on a dedicated maintenance thread, migrating one bucket at a time so the server
keeps serving during a resize.

Services:
- Lookup/mutation: `assoc_find`, `assoc_insert`, `assoc_delete`.
- Lifecycle: `assoc_init`.
- Expansion: `assoc_start_expand`, plus the maintenance thread
  (`start_assoc_maintenance_thread` / `stop_assoc_maintenance_thread`).
- Full-table iteration: `assoc_get_iterator` / `assoc_iterate` /
  `assoc_iterate_final` (used by features that must walk every item).

Callers are mostly in `items.c` (which links/unlinks items) and `thread.c` (which
wraps these with item locks).

## L2: Data structures

- **`item **primary_hashtable`**: the live bucket array. Each bucket is the head of
  a singly linked chain of items connected by their `h_next` pointer. Size is
  `2^hashpower` buckets.
- **`item **old_hashtable`**: during expansion, the previous (half-size) table.
  Buckets not yet migrated are still looked up here.
- **`unsigned int hashpower`**: log2 of the bucket count. Growing the table means
  incrementing this.
- **`bool expanding` / `uint64_t expand_bucket`**: expansion state - whether a
  resize is in progress and how far (which old bucket is next to migrate).
- **`hashsize(n)` / `hashmask(n)`**: macros for `2^n` and `2^n - 1`; the mask turns
  a hash value into a bucket index.
- **`struct assoc_iterator`**: cursor for a full-table walk (current bucket, current
  item, saved next, and whether the current bucket's item lock is held).
- **`maintenance_lock` / `maintenance_cond`**: gate the expansion thread and also
  serialize full-table iteration against expansion.

The chain pointer `h_next` lives inside the `item` itself and is protected by the
item lock for that key's bucket (see `thread.c`), which is why callers take an item
lock before calling into `assoc`.

## L3: Functions

### `void assoc_init(const int hashtable_init)`
Allocates the initial bucket array (`2^hashpower`, or a caller-supplied power) with
`calloc`, and records size stats. Exits the process if allocation fails (the server
cannot run without a hash table). Called once at startup from `main()`.

### `item *assoc_find(const char *key, size_t nkey, uint32_t hv)`
The lookup. Returns the `item*` whose key matches, or `NULL`. Picks the right
bucket (accounting for an in-progress expansion), then walks the chain comparing
key length then bytes with `memcmp`. Called on every `get` and before every
mutation. Returns the found item without changing its refcount (the caller manages
that).

### `static item **_hashitem_before(const char *key, size_t nkey, uint32_t hv)`
Returns the address of the pointer that *points at* the matching item (i.e. the
predecessor's `h_next`, or the bucket head). This indirection makes deletion a
simple pointer rewrite. If the item is absent, it returns the address of a `NULL`
pointer. Internal helper for `assoc_delete`.

### `static void assoc_expand(void)`
Allocates a new table of double size, moves the current one to `old_hashtable`,
bumps `hashpower`, and flips `expanding` on so the maintenance thread starts
migrating. If the allocation fails it restores the old table and keeps running (no
resize this time). Called only by the maintenance thread, with all worker threads
paused.

### `void assoc_start_expand(uint64_t curr_items)`
The trigger. Called by `items.c` after inserts. If it can grab the maintenance lock
without blocking and the item count exceeds 1.5x the bucket count (and we are below
`HASHPOWER_MAX`), it signals the maintenance thread to begin expanding. Non-blocking
by design so the hot insert path is never stalled.

### `int assoc_insert(item *it, uint32_t hv)`
Inserts an item at the head of its bucket chain (in the old or new table depending
on expansion progress). The key must not already exist - callers guarantee this.
Returns 1. Called from `items.c` when an item is linked.

### `void assoc_delete(const char *key, size_t nkey, uint32_t hv)`
Removes an item from its chain by finding the pointer-before via
`_hashitem_before` and splicing it out. Assumes the item exists (callers only
delete what they found). No return.

### Maintenance thread
- `static void *assoc_maintenance_thread(void *)` - the loop that performs
  incremental expansion (detailed in L4).
- `int start_assoc_maintenance_thread(void)` - reads the optional
  `MEMCACHED_HASH_BULK_MOVE` env var (buckets migrated per step), spawns the thread,
  names it `mc-assocmaint`. Returns 0 or -1.
- `void stop_assoc_maintenance_thread(void)` - signals the thread to stop and
  joins it (used at shutdown).

### Iteration
- `void *assoc_get_iterator(void)` - allocates a cursor and takes the maintenance
  lock (blocking expansion) so the walk sees a stable table. Returns the iterator
  or `NULL` if the lock is busy.
- `bool assoc_iterate(void *iterp, item **it)` - advances the cursor; sets `*it` to
  the next item or `NULL` at a bucket boundary, returns `false` only when the whole
  table has been walked. Locks each bucket's item lock while visiting it.
- `void assoc_iterate_final(void *iterp)` - releases any held bucket lock and the
  maintenance lock, frees the cursor.

## L4: The interesting bodies

### Bucket selection under expansion (`assoc_find`, `_hashitem_before`, `assoc_insert`)
All three share the same idiom: if `expanding` and this key's *old-table* bucket
(`hv & hashmask(hashpower - 1)`) has not yet been migrated (`>= expand_bucket`),
operate on `old_hashtable`; otherwise operate on `primary_hashtable`. This is what
lets lookups and writes stay correct while the table is half-migrated: an item is
found wherever it currently lives.

### `assoc_maintenance_thread` (incremental resize)
Holds `maintenance_lock` for its lifetime. Each pass:
1. **Migrate up to `hash_bulk_move` buckets** while `expanding`. For each, it
   `item_trylock`s the bucket. A neat optimization noted in the code: because the
   item-lock array is indexed by fewer low bits of `hv` than the hash table is, one
   item lock covers the whole `expand_bucket`, so a single lock suffices to move it.
   It rehashes every item in `old_hashtable[expand_bucket]` into its new
   `primary_hashtable` bucket, clears the old bucket, and increments
   `expand_bucket`. When `expand_bucket` reaches the old table's size, expansion is
   done: `expanding = false`, free `old_hashtable`, update stats. If the trylock
   fails it sleeps ~10ms and retries.
2. **When not expanding**, it `pthread_cond_wait`s for the next `assoc_start_expand`
   signal. When woken to actually grow, it pauses *all* worker threads
   (`pause_threads(PAUSE_ALL_THREADS)`), calls `assoc_expand()` to swap in the new
   table, then resumes them. The global pause is deliberate: swapping the table
   pointer wholesale is far simpler and only briefly stalls workers, versus a
   fully lock-free resize.

### Iteration vs expansion
`assoc_get_iterator` takes `maintenance_lock`, which the expansion thread also
holds while resizing, so a full-table walk and an expansion can never overlap. That
is why `assoc_iterate` only needs to consult `primary_hashtable` - it knows no
expansion can be in progress. Each visited bucket is guarded by its item lock so
concurrent readers/writers of that bucket stay safe.
