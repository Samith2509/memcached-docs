# proxy_config.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_config.c` manages the proxy's **configuration lifecycle**: loading the Lua
config file(s), (re)building the routing config, distributing it to worker
threads, and running scheduled "cron" tasks. The proxy is configured entirely in
Lua, and config can be reloaded at runtime without dropping connections, so this
file runs dedicated management threads that parse a new config in isolation and
then hand the finished objects to the workers. Entry points include
`proxy_first_confload`, `proxy_start_reload`, and `_start_proxy_config_threads`.

## L2: Data structures

- **`proxy_ctx_t`**: the global proxy state - the config Lua VM(s), worker list,
  loaded route objects, stats, cron list, and the synchronization used to swap
  config atomically.
- **Config VM vs worker VMs**: the manager thread owns a Lua VM used only to build
  config; finished config objects are copied/handed to each worker's own VM.
- **Dump/load helpers' buffers**: `_dump_helper`/`_load_helper` serialize compiled
  Lua chunks so a parsed config can be shipped between VMs.

## L3: Functions

- `int proxy_first_confload(void *arg)` - initial synchronous config load at
  startup (fails fast if the config is broken).
- `void proxy_start_reload(void *arg)` - trigger an async reload.
- `static void *_proxy_manager_thread(void *arg)` / `static void
  *_proxy_config_thread(void *arg)` - the background management/config threads.
- `static void proxy_config_reload(proxy_ctx_t *ctx)` - parse a new config and
  publish it to workers.
- `static void proxy_run_crons(proxy_ctx_t *ctx)` - execute scheduled cron
  functions.
- `static void proxy_config_stats_prep(...)` - prepare stats structures for the new
  config.
- `int _start_proxy_config_threads(...)`, `proxy_init_startfiles`,
  `proxy_load_files` - thread startup and file loading.
- `_msghandler`, `_run_pcall`, `_dump_helper`, `_load_helper` - Lua error handling
  and chunk (de)serialization.

## L4: Function bodies

### Reload without downtime (`proxy_config_reload`)
A reload parses the config in the manager VM first; only if that succeeds does it
build the new route objects and atomically swap them in for the workers. Because
the old config stays live until the new one is fully built and validated, a broken
edit cannot take the proxy down - the reload simply fails and the running config is
kept. Worker threads pick up the new config on their next request cycle rather than
being interrupted.

### Config VM to worker VM handoff (`_dump_helper` / `_load_helper`)
Lua state is not shareable across threads, so a compiled config cannot just be
pointer-passed to workers. The dump/load helpers serialize a Lua chunk to bytes in
the manager VM and reload it in each worker VM, giving every worker an independent
copy of the routing functions. This is why the file carries its own
serialize/deserialize plumbing.

### Management threads and crons
`_proxy_manager_thread` / `_proxy_config_thread` run outside the request workers so
config parsing, reloads, and periodic `proxy_run_crons` (user-scheduled Lua tasks,
e.g. periodic health checks or stats emission) never block request handling.
`proxy_first_confload` is the one synchronous path - at startup a bad config should
stop the server rather than run degraded.
