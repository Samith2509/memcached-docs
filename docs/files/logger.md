# logger.c

Subsystem: Logging / stats. See `stats_prefix.md` and `../submodules-overview.md`.

## L1: Purpose and services

`logger.c` implements memcached's **real-time watcher log**: the per-thread,
lock-light event stream behind the `watch` command (e.g. `watch fetchers`,
`watch mutations`, `watch evictions`, `watch proxyreqs`). Each worker thread has
its own ring buffer of structured log entries; watcher connections subscribe and
receive a filtered, formatted stream. Using per-thread buffers means the hot path
logs an event by writing to thread-local memory with no global lock, and a
separate step later serializes entries to text for watchers. It exposes the
`logger_create`, `logger_log` (via typed macros), and watcher attach/poll API.

## L2: Data structures

- **`logger`** (per thread): the ring buffer plus write/read positions and the
  thread's entry buffer.
- **`logentry`**: one event - a small header (type, time, size) followed by a
  type-specific packed payload written by the `_logger_log_*` functions.
- **`entry_details`**: static per-type metadata - the log flag/class it belongs
  to, its packer (`_logger_log_*`), and its text parser (`_logger_parse_*`).
- **watcher structures**: track subscribed connections, their selected event
  classes, and how far each has consumed.

## L3: Functions

Packers (`_logger_log_*`) write a typed entry into the ring buffer from
`va_list` args: text, evictions, ext (extstore) write, item get, item store, item
deleted, conn event, proxy request. Each corresponds to a `LOGGER_*` event type.

Parsers (`_logger_parse_*`) turn a packed entry back into a human/CSV text line
when a watcher reads it: text, item-store (`ise`), item-get (`ige`), eviction
(`ee`), item-delete (`ide`), ext-write (`extw`), conn-new (`cne`), conn-close
(`cce`), proxy-request (`prx_req`).

Helpers: `_logger_util_addr_endpoint` formats a peer address; plus the create/
watch/poll functions that wire buffers to watcher connections.

## L4: Function bodies

### Two-phase logging (pack then parse)
The key design is that logging is split. On the hot path a `_logger_log_*` packer
writes a compact binary record (just the fields, no formatting) into the calling
thread's own ring buffer - cheap and lock-free for that thread. Only when a watcher
is actually attached and consuming does the corresponding `_logger_parse_*` run,
turning the binary record into a text/CSV line. So the cost of pretty-printing is
paid by the (rare) watcher, not by every `get`/`set`. If no watcher is subscribed
to a class, entries of that class can be skipped entirely.

### Ring buffer + watcher fan-out
Each thread's buffer is a fixed-size ring; when it wraps, the oldest unconsumed
entries are dropped and counted as "skipped" (watchers are told they missed
events, rather than the server blocking). A watcher connection records its read
position per thread and is fed newly available entries as the event loop polls,
which is how many watchers can share one thread's stream without copying the raw
buffer per subscriber.

### Typed entries and extensibility
Adding a new watchable event is a matter of defining a `LOGGER_*` type, a packer,
a parser, and an `entry_details` row tying them to a log class. The get/store/
evict/delete/conn/proxy entries in this file are all instances of that pattern,
which is why the file is mostly parallel `_logger_log_*` / `_logger_parse_*` pairs.
