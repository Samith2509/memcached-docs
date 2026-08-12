# extstore.c

Subsystem: External storage. See `storage.md` (the memcached-facing wrapper),
`bipbuffer.md`, `crc32c.md`, and `../submodules-overview.md`.

## L1: Purpose and services

`extstore.c` is the **external storage engine**: a standalone key-agnostic
"write values to disk, read them back" engine that lets memcached keep large or
cold values on SSD while their small item headers stay in RAM. It knows nothing
about memcached keys or the hash table; it deals in opaque I/O objects (`obj_io`)
addressed by (page, offset, version). `storage.c` is the bridge that decides which
items to flush and issues reads on cache misses. Core services:
- `extstore_init` / config - open the disk file(s), start I/O threads.
- `extstore_write_request` + `extstore_write` - stage a value into a write buffer.
- `extstore_submit` / `extstore_submit_bg` - queue an async read or write.
- `extstore_get_stats` / `extstore_get_page_data` - observability.

## L2: Data structures

- **`store_engine`**: the whole engine - pages, free-page lists, buckets, the I/O
  thread pool, versioning counter, and locks.
- **`store_page`**: one fixed-size region of the disk file; tracks its bucket,
  version, free/used bytes, and an active write buffer.
- **`_store_wbuf`**: an in-memory write buffer that accumulates values before they
  are flushed to a page as one sequential write.
- **`store_io_thread`**: one background thread draining an I/O queue.
- **`obj_io`**: the unit of work - a read or write with a buffer, a page/offset, a
  completion callback, and a mode; the same struct callers embed in their requests.
- **`enum extstore_res`**: result codes (`extstore_err` maps them to strings).

## L3: Functions

Setup/stats: `extstore_init`, `extstore_get_stats`, `extstore_get_page_data`,
`extstore_err`, `_next_version`, `thread_setname`.

Pages/buffers: `_allocate_page`, `_evict_page`, `_allocate_wbuf`, `wbuf_new`,
`_submit_wbuf`, `_wbuf_cb`.

Write path: `extstore_write_request` (reserve space), `extstore_write` (copy value
into the wbuf).

Submit/IO: `extstore_submit`, `extstore_submit_bg`, `_extstore_submit`,
`_get_io_thread`, plus the I/O thread loop that performs `pread`/`pwrite` and fires
completion callbacks.

## L4: Function bodies

### Write path: buffer then flush
Values are not written to disk one at a time. `extstore_write_request` reserves
space in the current page's `_store_wbuf`; `extstore_write` copies the value in;
when a wbuf fills (or is forced), `_submit_wbuf` queues a single large sequential
write for the whole buffer, and `_wbuf_cb` runs on completion to mark the bytes
durable. Batching many small values into one big sequential write is what makes
SSD throughput usable and avoids write amplification.

### Pages, buckets, and eviction
Storage is divided into fixed-size `store_page`s grouped into buckets (e.g. by age
or compaction class). `_allocate_page` pulls a free page for a bucket;
`_evict_page` reclaims the oldest page when space runs out - because extstore is a
cache tier, evicting a page simply drops the values on it (their item headers in
RAM are then treated as misses). Versioning (`_next_version`) lets a reader detect
that the page it was pointed at has since been recycled, so a stale disk read is
discarded rather than returning wrong data.

### Async I/O model
All real disk work goes through `obj_io` objects queued to `store_io_thread`s
(`extstore_submit` picks a thread via `_get_io_thread`). The submitting worker does
not block: it hands off the `obj_io` and continues, and the completion callback
(supplied by `storage.c`/the proxy) resumes the original request when the read or
write finishes. `extstore_submit_bg` is the background/low-priority variant used
for compaction and flushing. This mirrors, at the disk layer, the same
"submit + callback + resume" pattern seen in `storage.c` and `proxy_internal.c`.
