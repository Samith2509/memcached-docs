# proxy_ratelim.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_ratelim.c` implements a token bucket filter (TBF) rate limiter exposed to
proxy Lua config. Lua handlers can create a limiter and call it with a "take"
amount; it returns true if enough tokens are available (allow) or false (deny).
Two flavors are provided:
- **Per-worker (`mcp.ratelim_tbf`)** - a plain object living inside one worker's
  Lua VM; no locking, fastest.
- **Global (`mcp.ratelim_global_tbf`)** - a shared object referenced by every
  worker via the proxy "global object" machinery, mutex-protected so all workers
  share one bucket.

Entry points: constructors (`mcplib_ratelim_tbf`, `mcplib_ratelim_global_tbf`),
call operators (`..._tbf_call`, `..._proxy_tbf_call`), proxy-copy hook
(`mcp_ratelim_proxy_tbf`), and GC finalizers.

## L2: Data structures

- **`struct mcp_ratelim_tbf`**: the bucket itself - `bucket` (current tokens),
  `limit` (max), `fill_rate` (tokens per tick), `tick_rate` (ms per tick),
  `last_update` (ms timestamp of the last refill).
- **`struct mcp_ratelim_global_tbf`**: embeds `struct mcp_globalobj_s g` (the
  shared-object header: refcount + `lock`) plus a `tbf`. Used for the global
  variant so multiple worker VMs can point at one bucket.
- **`TIMEVAL_TO_MILLIS`**: macro converting a `struct timeval` to milliseconds.

## L3: Functions

- `int mcplib_ratelim_tbf(lua_State *L)` / `int mcplib_ratelim_global_tbf(...)` -
  constructors creating the per-worker / global userdata, seeding the bucket.
- `int mcplib_ratelim_tbf_call(...)` / `int mcplib_ratelim_proxy_tbf_call(...)` -
  the callable operators; return a boolean allow/deny.
- `int mcp_ratelim_proxy_tbf(lua_State *from, lua_State *to)` - copies a global
  limiter reference from the config VM into a worker VM (takes a refcount).
- `int mcplib_ratelim_global_tbf_gc(...)` / `int mcplib_ratelim_proxy_tbf_gc(...)` -
  Lua GC hooks: finalize the global object / drop a worker's reference.
- `static int _update_tbf(...)` - the core refill+consume step.
- `static void _setup_tbf(...)`, `static lua_Integer _tbf_check(...)` - parse and
  validate the `{limit, fillrate, tickrate}` config table.

## L4: Function bodies

### `_update_tbf` (the algorithm)
Given the current time, it computes `delta = now - last_update`. If at least one
tick has elapsed, it adds `floor(delta / tick_rate)` ticks' worth of tokens
(`toadd * fill_rate`) to the bucket, advances `last_update` by exactly that many
whole ticks (not to `now`, so fractional ticks are not lost), and clamps the
bucket to `limit`. Then, if the bucket holds more than `take`, it subtracts and
returns 1 (allow); otherwise returns 0 (deny). This is lazy refill: tokens are
only recomputed when the limiter is called.

### Global vs per-worker locking
`mcplib_ratelim_tbf_call` calls `_update_tbf` directly - safe because the object
is private to one worker VM. `mcplib_ratelim_proxy_tbf_call` wraps the same call
in `pthread_mutex_lock(&lim->g.lock)` because the bucket is shared across worker
threads. The long comment block sketches a future lock-free version using C11
atomics (compute required time, CAS the timestamp) but it is not implemented.

### Global object lifecycle
`mcp_ratelim_proxy_tbf` runs when a config is loaded into a worker: it wraps the
global limiter in a worker-side userdata and calls `mcp_gobj_ref` to bump the
shared refcount. The two GC functions mirror this: the proxy GC calls
`mcp_gobj_unref`, and the global GC asserts the refcount reached zero before
`mcp_gobj_finalize` destroys the mutex. This ref/unref dance is the standard proxy
pattern for objects shared between the config VM and worker VMs.
