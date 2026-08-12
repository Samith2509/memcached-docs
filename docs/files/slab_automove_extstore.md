# slab_automove_extstore.c

Subsystem: Storage engine (slab memory management). See `slab_automove.md` for the
base algorithm and `../submodules-overview.md`.

## L1: Purpose and services

`slab_automove_extstore.c` is the extstore-aware variant of the slab page
rebalancing "brain" (`slab_automove.c` is the default). Once per run it looks at
per-slab-class statistics and decides whether to move a page from one class
(`src`) to another (`dst`), or into the global page pool. The extstore variant
adds a crucial behavior: it keeps a configurable percentage of memory *free* as
buffers so external storage has room to absorb write spikes while flushing values
to disk. It implements the pluggable automover interface (init/free/run) that
`slabs.c` calls:
- `slab_automove_extstore_init(settings)` - allocate and seed the mover state.
- `slab_automove_extstore_free(void *arg)` - tear it down.
- `slab_automove_extstore_run(void *arg, int *src, int *dst)` - one decision pass;
  outputs a source and destination slab class (or -1).

## L2: Data structures

- **`slab_automove`** (typedef struct): the mover state - a sliding `window_data`
  history per slab class, `window_size`/`window_cur`, tuning ratios
  (`max_age_ratio`, `free_ratio`), `item_size` (the extstore threshold that splits
  "small" header slabs from "large" value slabs), `global_pool_watermark`, and
  four snapshot arrays (`iam_before/after`, `sam_before/after`) of item and slab
  stats.
- **`struct window_data`**: one time-window sample per class - `age`, `dirty`,
  `evicted`, `excess_free`, `relaxed`. A dirty window (recent evictions/OOM/growth)
  makes a class ineligible as a move source.
- **`MIN_PAGES_FOR_SOURCE` (2)**: a class must have more than this many pages to
  give one up.

## L3: Functions

- `void *slab_automove_extstore_init(struct settings *settings)` - `calloc`s the
  state and its per-class window buffer from `slab_automove_*` settings; returns
  the opaque handle or NULL on OOM.
- `void slab_automove_extstore_free(void *arg)` - free the window buffer and state.
- `static void window_sum(...)` - sum a class's window samples for a decision.
- `static int global_pool_check(slab_automove *a, unsigned int *count)` - is the
  global page pool below its watermark? Signals memory pressure.
- `static void memcheck(slab_automove *a)` - recompute `global_pool_watermark` from
  total pages x `free_ratio` (floor of 2 pages).
- `static struct window_data *get_window_data(slab_automove *a, int class)` - index
  into the ring buffer for the current window slot of a class.
- `void slab_automove_extstore_run(void *arg, int *src, int *dst)` - the decision.

## L4: Function bodies

### The free-buffer philosophy (`memcheck` + `global_pool_check`)
The header comment explains the model: a percentage of global memory is held free
as extstore write buffers, and each slab class also wants a percentage of free
chunks. The global page pool is a secondary reserve any class can draw from.
`memcheck` sets `global_pool_watermark = total_pages * free_ratio`;
`global_pool_check` reports whether the reserve has fallen below it, which raises
the urgency of freeing pages.

### `slab_automove_extstore_run` (the decision loop)
1. **Snapshot.** Fills the "after" item/slab stat arrays, advances the window
   counter, and runs `memcheck`.
2. **Classify slabs.** For each class it decides "small" (header slabs, chunk
   smaller than `item_size`) vs "large" (value slabs), accumulating page counts to
   gauge how close extstore is to having to evict item *headers* (the 100%-pressure
   case).
3. **Score windows.** Records this pass's per-class window sample (age, dirty,
   evicted, excess-free), marking a window dirty on page growth, OOM, or eviction
   deltas so recently-active classes are protected from being raided.
4. **Pick src/dst.** Using the age ratio and free targets, it chooses the oldest
   over-provisioned class as `src` and a class under memory pressure (or the global
   pool) as `dst`, writing -1 when no safe move exists. `slabs.c` then performs the
   actual page move. The extra logic over the base mover is entirely about keeping
   the free buffers extstore needs.
