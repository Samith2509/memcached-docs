# slab_automove.c

Subsystem: Storage engine (slab page rebalancing policy). Works with
`slabs_mover.md` (which performs the moves) and `slabs.md`.

## L1: Purpose and services

`slab_automove.c` is the default *policy* that decides **when** to move a whole slab
page from one size class to another. Memcached assigns memory to size classes as
demand arrives, but demand shifts over time: a class that was hot may now be idle
while another is evicting heavily. This module watches per-class age and eviction
statistics over a sliding window and, when the imbalance is clear enough,
recommends moving a page from a "too much free / oldest" class (the source) to a
"actively evicting / youngest" class (the destination). The actual page relocation
is done by the slab mover; this file only produces `(src, dst)` recommendations.

It is the plain-memory policy; `slab_automove_extstore.c` is the extstore-aware
variant. Both implement the same interface so the mover can use either.

Services (interface used by the mover thread):
- `slab_automove_init` - create the policy state.
- `slab_automove_free` - destroy it.
- `slab_automove_run` - called periodically; outputs a source and destination
  class id (or -1 for "do nothing").

## L2: Data structures

- **`slab_automove`** (the policy state): a ring of `window_data` samples per class
  (`window_data` + `window_size` + `window_cur`), the configured `max_age_ratio`,
  and before/after snapshots of item and slab stats
  (`iam_before/after`, `sam_before/after`).
- **`struct window_data`**: one time-window sample for one class - `age`, a `dirty`
  flag (page or eviction activity happened), `evicted_ratio` (this class's share of
  all evictions this window), and `evicted_seen`.
- **Constants** `MIN_PAGES_FOR_SOURCE` (2) and `MIN_PAGES_FOR_RECLAIM` (2.5): floors
  that stop the policy from cannibalizing classes that barely have any pages.

## L3: Functions

### `void *slab_automove_init(struct settings *settings)`
Allocate the policy state sized to `slab_automove_window`, capture the initial stats
snapshot (`iam_before`/`sam_before`), and return an opaque handle. Returns `NULL` on
allocation failure. Called when the mover starts.

### `void slab_automove_free(void *arg)`
Free the window data and the state.

### `static void window_sum(struct window_data *wd, struct window_data *w, uint32_t size)`
Sum a class's whole window of samples into `w` (totals of age, dirty, evicted
ratio/seen). Helper for `slab_automove_run`.

### `void slab_automove_run(void *arg, int *src, int *dst)`
The heart of the policy. Refresh the after-stats, update this window slot for each
class, then decide whether to recommend a move. Writes the chosen source and
destination class ids into `*src`/`*dst`, or leaves them `-1` when no move is
warranted. Called on a timer by the mover thread.

## L4: How `slab_automove_run` decides

1. **Snapshot and totals.** Fill `iam_after`/`sam_after`, and sum this window's total
   evictions across all classes (so each class's share can be computed).
2. **Per-class window update.** For each class, write a fresh `window_data` slot:
   mark it `dirty` if it evicted, ran out of memory, or gained pages this window;
   record its `age` and its share of evictions (`evicted_ratio`). Then summarize the
   whole window for that class with `window_sum` and compute an average `age`.
3. **Reclaim case.** If a class has more than `MIN_PAGES_FOR_RECLAIM` pages worth of
   free chunks and the window is clean (not dirty) and overall memory is exhausted,
   recommend moving one of its pages back to the global pool (`*src = n`, `*dst =
   0`) and stop.
4. **Track extremes.** Otherwise track the **oldest** class that has enough pages to
   be a donor, and the **youngest** class that is actively evicting (evictions seen
   in more than half the window, or more than 25% of window evictions).
5. **Final decision.** After the window has filled at least once, if there is both a
   youngest (evicting) and an oldest class, and the youngest's age is below
   `oldest_age * max_age_ratio`, recommend moving a page from oldest to youngest
   (`*src = oldest`, `*dst = youngest`).

The age-ratio test is the key idea: memcached rebalances toward the class whose
items are being evicted while very young (a sign it is starved) at the expense of a
class whose items live a long time (a sign it has spare capacity). The window and
the "dirty" gating prevent thrashing on short-lived spikes.
