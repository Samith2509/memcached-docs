# storage.c

Subsystem: External storage (extstore). The bridge between the item layer and the
`extstore.c` disk engine. See `../architecture.md` section 5 and `items.md`.
Critical-path file (for the extstore configuration).

## L1: Purpose and services

`storage.c` connects memcached's in-memory item layer to the on-disk extstore
engine (`extstore.c`). Extstore lets a server hold far more data than fits in RAM by
writing large or cold values to disk while keeping only a small `item_hdr` pointer
in memory. This file decides **what** to spill, writes values out, reads them back
asynchronously when a client asks for a spilled value, and runs the background
**write** and **compaction** threads. It also parses the extstore configuration.

Services:
- **Read-back**: `storage_get_item` - fetch a value whose body lives on disk,
  scheduling an async read and parking the connection until it completes.
- **Write-out**: `storage_write` and `storage_write_thread` - move cold items from
  RAM to disk.
- **Compaction**: `storage_compact_thread` and helpers - reclaim fragmented disk
  pages.
- **Async plumbing**: the IO callbacks (`storage_submit_cb`, `_storage_get_item_cb`,
  `storage_return_cb`, `storage_finalize_cb`, `recache_or_free`) that integrate with
  the per-worker IO queues in `thread.c`.
- **Config/lifecycle**: `storage_init_config`, `storage_read_config`,
  `storage_check_config`, `storage_init`, `storage_conf_parse`.
- **Housekeeping**: `storage_validate_item`, `storage_delete`, stats.

## L2: Data structures

- **`item_hdr`** (in `memcached.h`): the small in-memory stand-in for a spilled
  value. It records where on disk the value lives (page, offset, version) so a read
  can find it. An item whose body is on disk carries the `ITEM_HDR` flag and stores
  an `item_hdr` where its data would be.
- **`io_pending_storage_t`**: an extstore IO request. It is a re-cast of the generic
  `io_pending_t` used by the worker IO queues, carrying the originating item
  (`hdr_it`), the response object, the extstore `obj_io` context, callbacks, and
  status flags (`miss`, `badcrc`, `noreply`). One of these represents an in-flight
  disk read tied to a suspended connection.
- **`obj_io`** (from `extstore.h`): the low-level extstore IO descriptor (iovecs,
  length, mode read/write, completion callback).
- Background-thread state (write/compact) plus config structs
  (`extstore_conf_file`, the settings block).

## L3: Functions (grouped)

### Read-back path
- `int storage_get_item(LIBEVENT_THREAD *t, item *it, mc_resp *resp)` - given an
  `ITEM_HDR` item, allocate a fresh RAM item to receive the value, build an extstore
  read request describing where to put the bytes, enqueue it on the worker's
  extstore IO queue, and return. The response is completed later by the callback.
  Returns 0 on success, -1 on allocation failure. Detailed in L4.
- `static void _storage_get_item_cb(void *e, obj_io *io, int ret)` - the completion
  callback invoked when the disk read finishes: validate the CRC, fill the new
  item's header fields from the on-disk header, mark hit/miss, and hand the item to
  the response.
- `static void recache_or_free(io_pending_t *pending)` - after a read, decide whether
  to keep the now-in-RAM value cached (promote it back) or free it, based on access
  patterns and settings.
- `storage_submit_cb`, `storage_return_cb`, `storage_finalize_cb` - the IO-queue
  hooks that submit the batch, return finished IOs to the worker, and finalize them.

### Write-out path
- `static int storage_write(void *storage, int clsid, int item_age)` - pick one cold
  item from a class's COLD LRU tail and, if it is old enough and not already on disk,
  write its value to an extstore page and replace it in place with an `ITEM_HDR`.
  Returns how many items it moved. Detailed in L4.
- `static void *storage_write_thread(void *arg)` - the background loop that calls
  `storage_write` across classes to keep enough free RAM, pacing itself to memory
  pressure. `start_storage_write_thread`, `storage_write_pause`/`resume` control it.

### Compaction path
- `static int storage_compact_check(...)` / `storage_compact_readback(...)` /
  `_storage_compact_cb(...)` / `storage_compact_thread(...)` - find a
  mostly-empty disk page, read back the still-live values it holds, rewrite them
  elsewhere, and free the page. `start_storage_compact_thread`,
  `storage_compact_pause`/`resume` control it.

### Config and lifecycle
- `void *storage_init_config(struct settings *s)` / `int storage_read_config(...)` /
  `int storage_check_config(...)` / `void *storage_init(void *conf)` - build,
  populate, validate, and instantiate the extstore configuration and engine at
  startup.
- `struct extstore_conf_file *storage_conf_parse(char *arg)` - parse a
  `path:size` file specification from the command line.
- `bool storage_validate_item(void *e, item *it)` / `void storage_delete(void *e, item *it)` -
  check whether a spilled item is still valid, and delete its disk copy when the
  item is removed.

## L4: Notable bodies

### `storage_get_item` (async read-back)
1. Read the `item_hdr` out of the on-disk-backed item to learn where the value
   lives, and figure out the size/slab class of a RAM item to hold it.
2. Allocate that receiving item (`item_alloc` for chunked/large, or
   `do_item_alloc_pull` otherwise). Return -1 if none is available (counted as
   get-oom upstream).
3. Allocate an `io_pending_storage_t` from the worker's IO cache, fill in the
   callbacks and the extstore `obj_io` (an iovec list pointing at the receiving
   item's data area, chunked if necessary), and take ownership of the original
   item's reference.
4. Enqueue the request on the `IO_QUEUE_EXTSTORE` queue. The connection is suspended
   (moved to `conn_io_queue`) by the caller. When extstore later completes the read
   on its own thread, it pokes the worker's IO-notify fd; `thread_libevent_ionotify`
   runs `_storage_get_item_cb`, which CRC-checks the bytes, populates the item
   header, and resumes the connection to write the response. This is the whole
   reason the connection state machine has the `conn_io_*` states.

### `storage_write` (spill a cold item to disk)
Pull one item from the tail of a class's COLD LRU with `lru_pull_tail`
(`LRU_PULL_RETURN_ITEM`), so it comes back locked and referenced. If it is not
already on disk and is older than `item_age`, allocate a small header item, choose a
disk page bucket (default, chunked, or a low-TTL bucket for soon-to-expire items so
they cluster together), mark the header `ITEM_HDR`, and issue an
`extstore_write_request` for the value bytes. On success the large in-RAM item is
replaced by the tiny header, freeing most of its memory. The refcount is kept at 2
so the slab mover cannot reclaim the item mid-write. The low-TTL bucketing is a nice
detail: grouping values that expire together makes whole pages become free at once,
which makes compaction cheap.

### The two background threads
`storage_write_thread` watches free memory and spills cold items when RAM runs low,
so evictions are replaced by "demote to disk". `storage_compact_thread` fights disk
fragmentation: as spilled items expire or are overwritten, pages become partly dead;
compaction picks a sparse page, reads back its surviving values, rewrites them into
fresh pages, and returns the emptied page to extstore's free list. Both are paused
during global quiesces (`pause_threads(PAUSE_ALL_THREADS)`).
