# thread.c

Subsystem: Core server / event loop. Central to `../architecture.md` sections 2
(thread model) and 3-4 (connection dispatch). Critical-path file.

## L1: Purpose and services

`thread.c` owns memcached's multithreading. It creates and runs the worker-thread
pool, moves accepted connections from the main thread to workers, provides the item
locking that makes concurrent access safe, and exposes the thread-safe wrappers
around the storage engine's `do_*` functions. If `memcached.c` is the server's
skeleton, `thread.c` is how it runs on many cores at once.

Its services group into five areas:
- **Item locking**: `item_lock` / `item_trylock` / `item_unlock` - a bucketed array
  of mutexes selected by key hash, the fine-grained lock protecting an item's hash
  chain and refcount.
- **Worker pool**: `memcached_thread_init`, `setup_thread`, `worker_libevent`, and
  the connection queue (`CQ`) that hands new sockets to workers.
- **Thread-safe storage API**: `item_alloc`, `item_get`, `item_touch`,
  `item_unlink`, `item_remove`, `store_item`, `add_delta`, ... - each takes the
  right item lock and calls the corresponding `do_*` in `items.c`.
- **Coordination**: `pause_threads` / `stop_threads` (safely quiesce every thread,
  for hash expansion, slab moves, and shutdown).
- **Per-thread stats**: `STATS_LOCK`, `threadlocal_stats_*`, `slab_stats_aggregate`.

## L2: Data structures

- **`LIBEVENT_THREAD *threads`** (array): one per worker. Each holds its own libevent
  `event_base`, a notify mechanism (eventfd/pipe) for wakeups, a connection queue
  (`ev_queue`), an IO-notify queue (`ion_head`), per-thread object caches
  (`rbuf_cache` for read buffers, `io_cache` for IO objects), per-thread stats, a
  logger handle, and (when enabled) storage/proxy context and an SSL write buffer.
  Defined in `memcached.h`.
- **`pthread_mutex_t *item_locks` + `item_lock_count` / `item_lock_hashpower`**: the
  bucketed item-lock table. A key's lock is `item_locks[hv & hashmask(...)]`.
- **`CQ` / `CQ_ITEM`**: the connection queue and its entries. A `CQ_ITEM` carries a
  socket fd and how to initialize it; it is passed from the main thread to a worker.
  `CQ_ITEM`s are recycled through a `cache_t`.
- **Init coordination**: `init_count` / `init_lock` / `init_cond` and
  `worker_hang_lock` - used to wait for all workers to finish setup and to pause
  them on demand.

The lock discipline is documented at the top of the file and is worth memorizing:
hold the **item lock** before touching an item's hash bucket or the item struct;
LRU changes need the item lock *and* the LRU lock; code walking an LRU must
`item_trylock` before modifying an item.

## L3: Functions

### Item locking
- `void item_lock(uint32_t hv)` / `void item_unlock(uint32_t hv)` - lock/unlock the
  mutex for hash value `hv`. Called around every storage operation.
- `void *item_trylock(uint32_t hv)` - non-blocking lock, returns the lock pointer or
  `NULL`. Used by code that must not block on a bucket (the LRU crawler, the assoc
  expansion thread). `item_trylock_unlock` releases it.

### Worker pool and dispatch
- `void memcached_thread_init(int nthreads, void *arg)` - allocate the item-lock
  table and the `threads` array, `setup_thread` each, spawn them via
  `create_worker`, and block until all have registered as initialized. Called once
  from `main()`.
- `static void setup_thread(LIBEVENT_THREAD *me)` - build one worker's libevent base,
  notify handlers, connection queue, per-thread caches, and IO queues (extstore,
  proxy). Exits on any allocation failure.
- `static void *worker_libevent(void *arg)` - the worker thread entry point: create
  its logger and LRU bump buffer, drop worker privileges, register as initialized,
  then loop `event_base_loop(EVLOOP_ONCE)` + IO-queue submission until asked to
  exit.
- `void dispatch_conn_new(...)` (declared here, defined nearby) and the CQ helpers
  `cq_push`/`cq_pop`/`cqi_new`/`cqi_free` - enqueue an accepted socket to a chosen
  worker and wake it.
- `static void notify_worker(...)` / `notify_worker_fd(...)` - write to a worker's
  eventfd/pipe so its event loop wakes and drains its queue.
- Thread selection: `select_thread_round_robin` and `select_thread_by_napi_id`
  (NIC-affinity aware) choose which worker gets a new connection.
- `static void thread_libevent_process(...)` - the worker's handler for its notify
  fd: pull queued `CQ_ITEM`s, create the `conn` objects (or handle pause/stop
  messages), and start driving them.
- `static void thread_libevent_ionotify(...)` - the worker's handler for the IO
  notify fd: drain completed async IO objects (extstore reads finishing) and resume
  their connections.

### Coordination
- `void pause_threads(enum pause_thread_types type)` - quiesce workers (and
  optionally all background threads) by taking `worker_hang_lock` and telling each
  worker to hang until resumed. Used before operations that mutate global structure
  (hash table swap, slab page move). Detailed in L4.
- `void stop_threads(void)` - orderly shutdown: stop assoc maintenance, hang the
  workers, stop each background thread, close all connections, then join the
  workers.
- `void accept_new_conns(bool)` - enable/disable accepting (used under connection
  limits).

### Thread-safe storage wrappers
- `item_alloc`, `item_get`, `item_get_locked`, `item_touch`, `item_remove`,
  `item_unlink`, `item_replace`, `add_delta`, `store_item` - each hashes the key,
  takes the item lock, calls the matching `do_*` in `items.c`, and unlocks. These
  are what the protocol layer actually calls.

### Stats
- `STATS_LOCK` / `STATS_UNLOCK` - the global stats mutex.
- `threadlocal_stats_reset` / `threadlocal_stats_aggregate` /
  `slab_stats_aggregate` - roll per-thread counters up into a global view for the
  `stats` command.

## L4: Notable bodies

### The item-lock wrappers (the pattern)
Look at `item_get`: `hv = hash(...)`, `item_lock(hv)`, `it = do_item_get(...)`,
`item_unlock(hv)`, return. Every wrapper is this three-step sandwich. Centralizing
the lock here means `items.c`'s `do_*` functions can assume the correct lock is
already held and never lock themselves, which avoids double-locking and makes the
locking auditable in one file. `item_get_locked` is the exception that deliberately
returns *with the lock still held* so a caller can atomically replace an item.

### `thread_libevent_process` (new-connection and control path)
Fired when another thread wrote to this worker's notify fd. It reads the eventfd
count, then pops `CQ_ITEM`s from its queue. Each item is either a new connection
(create the `conn` via `conn_new`, bind it to this worker's base, start its state
machine) or a control message: `queue_pause` makes the worker register and hang on
`worker_hang_lock`; `queue_stop` makes it exit. Bounding the loop by the eventfd
count read at entry keeps one wakeup from starving the event loop.

### `thread_libevent_ionotify` and async IO
Extstore disk reads complete on a different thread; that thread appends the finished
`io_pending_t` to this worker's `ion_head` and pokes the IO notify fd. This handler
splices the whole queue out under `ion_lock`, then calls `conn_io_queue_return` on
each, which resumes the parked connection (moving it out of `conn_io_queue`). This
is the mechanism behind the `conn_io_*` states in the connection machine.

### `pause_threads` (global quiesce)
The trick that makes hash-table swaps and slab moves safe without fine-grained
coordination. For `PAUSE_ALL_THREADS` it first pauses the background threads (slab
mover, LRU maintainer, crawler, extstore), then falls through to also pause workers:
it takes `worker_hang_lock`, resets `init_count`, sends every worker a `queue_pause`
message, and waits until all have registered as hung. While the lock is held no
worker is running request code, so the caller can swap the hash table pointer or
relocate a page. `RESUME_*` releases the lock. The `switch` deliberately uses
fall-through so "ALL" is a superset of "WORKER".

### `memcached_thread_init` (startup barrier)
Allocates the lock table and workers, spawns each, then calls
`wait_for_thread_registration` so `main()` does not open listeners until every
worker is fully initialized. Each worker calls `register_thread_initialized` twice
in its lifetime - once after setup and once at exit - reusing the same
count/condition mechanism to let `main`/`stop_threads` know when all workers have
reached a barrier.
