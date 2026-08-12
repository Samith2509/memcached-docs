# proxy_internal.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_internal.c` handles **local command execution** for the proxy: running a
request against this instance's *own* cache instead of forwarding it to a backend.
A proxy Lua route can decide "serve this from the local memcached" - this file
turns a parsed proxy request into a real internal command, executes it through the
normal storage engine (including extstore fetches), and packages the reply as a
`mcp_resp_t` for Lua. Key entry points:
- `mcplib_internal(lua_State *L)` - the Lua-facing `mcp.internal()` call.
- `int mcplib_internal_run(mcp_rcontext_t *rctx)` / `void
  *mcp_rcontext_internal(...)` - run an internal command from a route context.

## L2: Data structures

- **`mcp_request_t` / `mcp_resp_t`** (from `proxy.h`): the proxy's request and
  response wrappers.
- **`mcp_parser_t`**: the parsed command tokens, reused so internal execution goes
  through the same command parsing as the network path.
- **`item`, `mc_resp`, `obj_io`** (core engine types): the internal execution
  produces a real `item` and `mc_resp`, and uses `obj_io` for extstore reads.

## L3: Functions

- `static void _storage_get_item_cb(void *e, obj_io *eio, int ret)` - completion
  callback for an extstore read triggered by an internal get.
- `static int _proxy_storage_get(LIBEVENT_THREAD *t, item *it, mc_resp *resp, ...)`
  - fetch an item's value, pulling it from extstore if the value lives on disk.
- `static int proxy_storage_mg(...)` / `proxy_storage_get(...)` - meta-get and
  classic-get variants.
- `static void proxy_get_cmd(...)` - drive a get/gets/touch command internally.
- `static inline int _mcplib_internal_run(LIBEVENT_THREAD *t, mcp_request_t *rq,
  mcp_resp_t *r, mc_resp *resp)` - the core: execute the parsed request against the
  local engine and fill the response.
- `int mcplib_internal(lua_State *L)` - Lua binding.
- `void *mcp_rcontext_internal(mcp_rcontext_t *rctx, ...)` / `int
  mcplib_internal_run(mcp_rcontext_t *rctx)` - run within a route context and
  resume when async storage completes.

## L4: Function bodies

### `_mcplib_internal_run` (the dispatcher)
Takes a parsed proxy request and switches on the command type, calling the same
storage-engine entry points the network protocol uses (get/set/meta/etc.) so the
behavior is identical to a normally-received command. The result is written into
the `mcp_resp_t` `r` that Lua will inspect. Doing it this way means internal
execution automatically inherits every engine feature (LRU, CAS, TTL, extstore).

### Extstore path (`_proxy_storage_get` + `_storage_get_item_cb`)
When an internally-fetched item's value is on disk (extstore), the value cannot be
returned synchronously. `_proxy_storage_get` submits an `obj_io` read and the
request suspends; `_storage_get_item_cb` runs when the disk read completes,
filling in the value and resuming the route. This mirrors the async storage
handling in `storage.c` but feeds the result back into the proxy's response
object.

### Route-context integration
`mcp_rcontext_internal` / `mcplib_internal_run` tie the above into the proxy's
coroutine-style route contexts (`proxy_luafgen.c`): an internal command can be one
step of a multi-backend route, and the run function is re-entrant so it can be
resumed after asynchronous extstore completion.
