# crawler.c

Subsystem: Storage engine (background maintenance). See `../submodules-overview.md`.
Related: `items.md` (LRU), `assoc.md` (hash table).

## L1: Purpose and services

`crawler.c` implements the **LRU crawler**: a background thread that walks the item
LRUs/hash table item-by-item to do work that would be too expensive on the hot
path. It has a pluggable "crawler module" interface, and three built-in modules:
- **expired** - proactively reclaim expired items (background TTL enforcement) so
  memory is freed before the LRU physically reaches them.
- **metadump** - stream item metadata to a client for the `lru_crawler metadump`
  command (key, expiry, size, LA time, etc.).
- **mgdump** - a lighter dump producing meta-get style key lines.

It also owns the client plumbing that feeds crawl output to the requesting
connection. Public entry points include `start_item_crawler_thread`,
`lru_crawler_crawl`, `lru_crawler_pause`/`resume`, and the metadump/mgdump command
hooks.

## L2: Data structures

- **`crawler_module_t`**: a plugged-in crawl behavior - function pointers
  (`init`, `eval`, `doneclass`, `finalize`) plus module-private state. The engine
  calls `eval` once per visited item.
- **`crawler_module_reg_t`**: the static registration of each module's callbacks.
- **`crawler_client_t`**: the output sink - a connection/buffer the crawl writes to,
  with an expandable scratch buffer.
- **`crawler` items**: special sentinel `item`s (`crawler` type) spliced into each
  LRU tail; the maintainer thread walks them backward through the list.

## L3: Functions

Client I/O: `lru_crawler_close_client`, `lru_crawler_release_client`,
`lru_crawler_expand_buf`, `lru_crawler_write` (flush buffered output to the
connection).

Module: expired (`crawler_expired_init/doneclass/finalize/eval`), metadump
(`crawler_metadump_init/eval/finalize`), mgdump (`crawler_mgdump_init/eval/
finalize`). Each `*_eval` inspects one item and decides to reclaim it or emit a
line.

Engine loop: `item_crawl_hash` (hash-table walk variant), `lru_crawler_class_done`,
the maintainer thread, and the pause/resume/crawl control functions.

## L4: Function bodies

### The crawler item mechanism
The crawler advances by inserting a lightweight sentinel `item` at the tail of an
LRU and repeatedly moving it one slot toward the head, calling the active module's
`eval` on each real item it passes. Because it reuses the normal LRU locking, it
can run concurrently with live traffic without holding a global lock for long -
each step takes and releases the relevant item lock. This is the key design point:
crawling is incremental and lock-friendly, not a stop-the-world scan.

### `crawler_expired_eval`
For each visited item it checks expiry (and optionally staleness rules) and, if the
item is dead, reclaims it (`item_unlink`/reclaim), updating per-class stats. Doing
this in the background keeps expired-but-not-yet-touched items from wasting memory
and smooths out reclaim cost that would otherwise land on `get`/`set`.

### metadump / mgdump `eval` + `write`
The dump modules format one line per live item into the client's scratch buffer;
`lru_crawler_write` flushes that buffer to the connection when it fills, expanding
it via `lru_crawler_expand_buf` if a single entry is large. `finalize` emits the
terminating line. This lets an operator export the full keyspace metadata without
pausing the server.

### `item_crawl_hash`
An alternate driver that walks the hash table buckets instead of the LRUs, used
where a whole-keyspace pass (rather than per-LRU order) is wanted. It shares the
same module `eval` callbacks, so the three modules work with either traversal.
