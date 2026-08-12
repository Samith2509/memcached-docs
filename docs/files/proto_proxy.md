# proto_proxy.c

Subsystem: Proxy (Lua-driven routing) - integration with the core server. See
`../submodules-overview.md`, `proto_text.md`, `memcached.md`.

## L1: Purpose and services

`proto_proxy.c` is the **bridge between the core memcached connection machinery and
the proxy subsystem**. When memcached is built/run as a proxy, incoming client
commands are handed to this file, which parses them, drives them through the Lua
route (via `proxy_luafgen.c`/`proxy_lua.c`), manages the asynchronous
"suspend until backends reply, then resume" flow through the core I/O queue, and
reports proxy statistics. It wraps the text protocols. Key entry points mirror the
core protocol hooks: `try_read_command_proxy`, `complete_nread_proxy`,
`proxy_cleanup_conn`, plus `proxy_init`/`proxy_thread_init` and the
`proxy_submit_cb`/`proxy_return_rctx_cb`/`proxy_finalize_rctx_cb` I/O-queue
callbacks.

## L2: Data structures

- **`proxy_ctx_t`**: the global proxy state (shared with `proxy_config.c`).
- **`LIBEVENT_THREAD`** (core worker thread): each carries proxy-thread state
  (`thr->proxy_*`) - the worker's Lua VM, buffer-memory accounting, and GC pacing.
- **`io_pending_t` / `io_queue_t`**: the core server's async I/O plumbing; the proxy
  registers callbacks so a route that is waiting on backends parks here and is
  resumed when they complete.
- **`mcp_rcontext_t`**: a route's execution context (from `proxy_luafgen.c`); this
  file starts, returns, and finalizes them.

## L3: Functions

Init: `proxy_init` (build `proxy_ctx_t`, optionally uring/memprofile),
`proxy_thread_init` (per-worker Lua VM + state).

Connection/command: `try_read_command_proxy` (parse an incoming command),
`complete_nread_proxy` (value read complete), `proxy_cleanup_conn`.

Async I/O callbacks: `proxy_submit_cb` (dispatch parked route work),
`proxy_return_rctx_cb` (a route step's backends returned), `proxy_finalize_rctx_cb`
(route done, emit response and clean up).

Memory/GC: `proxy_bufmem_checkadd`, `proxy_gc_poke`, `proxy_gc_timerpoke`,
`_proxy_advance_lastkb`.

Stats: `proxy_stats`, `process_proxy_stats`, `process_proxy_funcstats`,
`process_proxy_bestats`.

## L4: Function bodies (architecture)

### Command lifecycle: read -> route -> suspend -> resume
`try_read_command_proxy` tokenizes an incoming client command (reusing the text
tokenizer) and starts a route context. A route typically needs to talk to one or
more backends, which cannot complete synchronously, so the request is parked on the
core `io_queue_t`. `proxy_submit_cb` kicks off the backend work; when replies
arrive, `proxy_return_rctx_cb` resumes the route (possibly for several steps); and
`proxy_finalize_rctx_cb` writes the final response to the client and tears down the
context. This suspend/resume design is what lets one worker thread juggle many
in-flight proxied requests without blocking.

### Per-worker Lua VM and GC pacing
`proxy_thread_init` gives each worker its own Lua VM so routes run without
cross-thread locking. Because routes allocate Lua objects per request, GC must be
paced or it would stall the worker: `proxy_gc_poke`/`proxy_gc_timerpoke` and
`_proxy_advance_lastkb` nudge Lua's incremental collector based on how much request
buffer memory has been used, and `proxy_bufmem_checkadd` enforces the buffer-memory
limit so a burst of large responses cannot exhaust RAM.

### Statistics surface
The `process_proxy_*stats` functions expose proxy internals through the normal
`stats` command: overall proxy counters, per-route-function stats
(`funcstats`), and per-backend stats (`bestats`). These read the counters that the
route execution and backend network layers maintain, giving operators visibility
into routing behavior and backend health.
