# proxy_lua.c

Subsystem: Proxy (Lua-driven routing) - the Lua API surface. See
`../submodules-overview.md`.

## L1: Purpose and services

`proxy_lua.c` defines the core **`mcp.*` Lua library**: the API a proxy config
script uses to describe its topology and behavior. It registers the constructors
and tunables for **backends** (upstream servers) and **pools** (groups of backends
with a distribution), the **`mcp.attach`** call that binds a route function to a
command class, logging helpers, cron registration, time functions, stats access,
TLS enablement, and the many backend behavior knobs (timeouts, failure/flap
handling, connection limits, GC and memory limits). It is the largest single piece
of the Lua-facing interface; the actual per-request execution lives in
`proxy_luafgen.c`.

## L2: Data structures

- **`proxy_ctx_t`** and its `tunables`: global proxy settings that the many
  `mcplib_backend_*`/`mcplib_*_limit` setters write into.
- **backend userdata** (`mcp.backend`) and its worker-side wrapper: one upstream
  server's config and per-connection settings.
- **pool userdata** (`mcp.pool`): a set of backends plus a chosen key hash
  (`proxy_xxhash`/`proxy_jump_hash`/`proxy_ring_hash`) and distribution.
- **stats/log structures**: buffers used by `mcplib_server_stats` and the logging
  calls.

## L3: Functions (grouped)

- **Backend + pool construction/GC**: `mcplib_pool`, `mcplib_pool_proxy_gc`,
  backend constructors, `mcplib_backend_wrap_gc`, `mcplib_backend_gc`.
- **Backend tunables**: `mcplib_backend_use_iothread`, `..._use_tls`,
  `..._failure_limit`, `..._depth_limit`, `..._connect_timeout`,
  `..._retry_waittime`, `..._retry_timeout`, `..._read_timeout`, `..._flap_time`,
  `..._flap_backoff_ramp`, `..._flap_backoff_max`, `mcplib_tcp_keepalive`.
- **Global limits/knobs**: `mcplib_luagc_ratio`, `mcplib_stat_limit`,
  `mcplib_active_req_limit`, `mcplib_buffer_memory_limit`, `mcplib_init_tls`.
- **Routing + logging**: `mcplib_attach` (bind a route), `mcplib_log`,
  `mcplib_log_req`, `mcplib_log_reqsample`, `mcplib_ct_log`.
- **Scheduling/time/stats**: `mcplib_register_cron`,
  `mcplib_schedule_config_reload`, `mcplib_time_real_millis`,
  `mcplib_time_mono_millis`, `mcplib_server_stats`, stat append helpers.

## L4: Function bodies (architecture)

### Config-time declaration, runtime effect
Most functions here run only at config load: they read Lua arguments and stash
values into `proxy_ctx_t.tunables` or into backend/pool userdata. For example the
`mcplib_backend_*_timeout`/`*_limit` setters simply validate and record numbers
that the network layer (`proxy_network.c`) later consults. So this file is mostly
"parse and store", and the behavior it configures is enforced elsewhere.

### Backends, pools, and hashing
`mcplib_pool` ties a list of backends to a key hash and a distribution function
(the objects from `proxy_xxhash.c`/`proxy_jump_hash.c`/`proxy_ring_hash.c`),
producing the object a route uses to pick a server for a key. The backend GC
functions (`backend_gc`, `backend_wrap_gc`, `pool_proxy_gc`) manage the shared/
per-worker lifetime of these objects, since a backend declared in the config VM is
referenced by every worker VM.

### Failure and flap handling knobs
A notable cluster of tunables governs resilience: `failure_limit` and the `flap_*`
settings (time window, backoff ramp, backoff max) implement exponential backoff
for a backend that keeps failing ("flapping"), so the proxy stops hammering a dead
server and retries with increasing delay. `depth_limit`/`active_req_limit` bound how
many requests may be outstanding. These exist to keep one bad backend from
degrading the whole proxy.

### `mcplib_attach` and logging
`mcplib_attach` is how a config wires a route function to a command class (the
entry point requests flow into). The `mcplib_log*` family lets routes emit entries
into the watcher log (`logger.c`), including sampled request logging
(`log_reqsample`) so high-traffic proxies can log a fraction of requests without
overwhelming watchers.
