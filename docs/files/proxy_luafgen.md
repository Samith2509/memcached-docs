# proxy_luafgen.c

Subsystem: Proxy (Lua-driven routing) - route execution engine. See
`../submodules-overview.md`, `proto_proxy.md`, `proxy_lua.md`.

## L1: Purpose and services

`proxy_luafgen.c` implements the proxy's **route execution engine**: "function
generators" (funcgens) and **request contexts** (rcontexts / `rctx`). A funcgen is
a template that produces a route function; an rcontext is the per-request execution
state that runs one route, can **suspend** while waiting on backends, and **resume**
when replies arrive - a coroutine-like model built on Lua. This is what lets a
single worker thread run many concurrent, multi-step routes (fan-out, first-good,
failover) efficiently. Public entry points include `mcp_funcgen_start` (begin a
route for a parsed request), `mcp_funcgen_get_rctx`/`return_rctx` (rcontext
lifecycle), and the route dispatcher `mcp_funcgen_route`.

## L2: Data structures

- **`mcp_funcgen_t`**: a compiled route generator - the Lua function that builds a
  route plus a cache/pool of reusable rcontexts and reference bookkeeping.
- **`mcp_rcontext_t` (rctx)**: one in-flight route execution - its Lua coroutine/
  state, the request, slots for the responses it is waiting on, wait/return
  handlers, and links back to its funcgen. Reused across requests to avoid
  per-request allocation.
- **`mcp_parser_t`**: the parsed incoming command handed to `mcp_funcgen_start`.

## L3: Functions

- `mcp_rcontext_t *mcp_funcgen_start(lua_State *L, mcp_funcgen_t *fgen,
  mcp_parser_t *pr)` - allocate/reuse an rcontext and begin running the route.
- `mcp_rcontext_t *mcp_funcgen_get_rctx(...)` - fetch or create an rcontext from the
  funcgen's cache.
- `void mcp_funcgen_return_rctx(mcp_rcontext_t *rctx)` / `_mcp_funcgen_return_rctx`
  - finish a route and return its rcontext to the pool.
- `static void mcp_funcgen_wait_handler(...)` - libevent callback that resumes a
  suspended route when it has waited long enough / its awaited responses arrived.
- `static void mcp_rcontext_cleanup(...)` / `_mcplib_funcgen_cache(...)` - tear down
  or cache an rcontext.
- `static int _mcplib_funcgen_gencall(...)` - the generator call that produces a
  route function.
- `int mcplib_funcgen_gc(lua_State *L)` / `mcp_funcgen_cleanup` - GC / teardown.
- `static mcp_funcgen_t *mcp_funcgen_route(...)` - route dispatch.

## L4: Function bodies (architecture)

### rcontext pooling (why funcgens exist)
Allocating a fresh Lua coroutine and route state per request would be far too
expensive at memcached's request rates. A funcgen therefore keeps a cache of
rcontexts (`_mcplib_funcgen_cache`, `mcp_funcgen_get_rctx`): `mcp_funcgen_start`
pulls a warm rcontext, runs the route, and `mcp_funcgen_return_rctx` scrubs and
returns it to the pool. This amortizes setup cost across many requests and is the
main reason routing can be Lua-driven yet fast.

### Suspend / resume model
A route often issues backend requests (via the request/network layers) and then
must wait. Instead of blocking the worker, the rcontext yields; the awaited
responses are recorded in its slots, and `mcp_funcgen_wait_handler` (a libevent
callback) resumes the Lua coroutine once the wait condition is met (all/enough
responses in, or a timeout). Because state lives in the rcontext, one worker
interleaves many suspended routes. `proto_proxy.c`'s `proxy_return_rctx_cb` /
`proxy_finalize_rctx_cb` are the core-side hooks that feed backend completions into
this machinery.

### Routes as composed functions (`mcp_funcgen_route`)
Complex routing (send to N backends and take the first success, failover, mirror,
etc.) is expressed by composing funcgens: a route function can itself invoke
sub-routes, each getting its own rcontext. `mcp_funcgen_route` dispatches to the
right generator for a request. `mcp_rcontext_cleanup`/`mcp_funcgen_gc` ensure the
possibly-deep tree of contexts and Lua references is released correctly, which is
delicate because references span the config VM and per-worker VMs.
