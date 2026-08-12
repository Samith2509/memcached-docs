# slabs_mover.c

Subsystem: Storage engine (slab memory management). See `slabs.md`,
`slab_automove.md`, and `../submodules-overview.md`.

## L1: Purpose and services

`slabs_mover.c` is the **slab rebalance/maintenance thread**: the machinery that
physically moves a 1 MB page from one slab class to another (or back to the global
page pool). The *decision* of which page to move comes from the automover
(`slab_automove.c` / `slab_automove_extstore.c`); this file performs the move
safely while the server is live, which is delicate because the page being moved
may still hold referenced items. Public entry points:
- `start_slab_maintenance_thread` / `stop_slab_maintenance_thread`.
- `slabs_reassign(src, dst, flags)` - request a move.
- `slab_maintenance_pause` / `slab_maintenance_resume`.

## L2: Data structures

- **`struct slab_rebal_thread`**: the mover's state - the source/destination slab
  classes, progress cursor through the page being drained, flags, and
  synchronization (mutex/condvar) with requesters.
- **`struct _locked_st`**: scratch state for the "operate on one item while its
  lock is held" callbacks.
- **`enum reassign_result_type`**: the outcome of a reassign request (busy, ok, bad
  class, etc.).

## L3: Functions

- `slab_rebalance_start` - begin draining a chosen source page.
- `slab_rebalance_prep` - snapshot the page and set up the move cursor.
- `slab_rebalance_move` - the core loop: walk the page slot by slot, evicting or
  rescuing each item.
- `slab_rebalance_rescue` / `slab_rebalance_active_rescue` - relocate a *live*
  (referenced) item off the page instead of dropping it.
- `slab_rebalance_finish` - hand the emptied page to the destination class.
- `slab_rebalance_check_automove` - poll the automover for a new job.
- `_slabs_locked_cb` - run a callback under the appropriate item lock.
- `slab_rebalance_thread` - the thread loop.
- `do_slabs_reassign` / `slabs_reassign` - request API (internal/locked wrappers).
- `slab_maintenance_pause` / `resume`, `start_`/`stop_slab_maintenance_thread`.

## L4: Function bodies

### `slab_rebalance_move` (the hard part)
It scans the source page one item slot at a time. For each slot it must decide,
under the item's lock, whether the slot is free (skip), holds a dead item (drop),
or holds a live item that something still references. Live items cannot simply be
freed - doing so would leave dangling pointers in the hash table or in an
in-flight response - so they are handed to the rescue path. The scan is
incremental and re-entrant: it yields and resumes so it never holds locks long
enough to stall request traffic.

### `slab_rebalance_rescue` / `slab_rebalance_active_rescue`
Rescue copies a live item into a freshly allocated chunk in another class (or the
same class off this page) and re-links it in the hash table/LRU so all references
resolve to the new location, then frees the old slot. `active_rescue` handles the
trickier case of an item that is currently referenced by an active
operation/connection, coordinating so the move waits or retries rather than
corrupting in-flight state. Only when every slot is free does the page become
movable.

### `slab_rebalance_thread` loop
The thread sleeps until woken by a reassign request or an automove poll
(`slab_rebalance_check_automove`), runs the start->prep->move->finish state
machine for one page, then loops. `pause`/`resume` gate the loop so operations
like a clean shutdown or a maintenance window can quiesce page movement. The
result codes from `slabs_reassign` tell callers whether a move was accepted or the
mover was busy.
