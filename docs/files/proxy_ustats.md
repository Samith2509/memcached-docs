# proxy_ustats.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_ustats.c` implements user-defined statistics counters for the proxy. A Lua
config can declare named counters (`mcp.add_stat`) and, from request handlers,
increment them (`mcp.stat`). These appear in memcached's `stats proxy` output
prefixed with `user_`. It provides two Lua C functions:
- `mcplib_add_stat(lua_State *L)` - declare/name a counter slot at a fixed index
  (config/global scope).
- `mcplib_stat(lua_State *L)` - add a delta to a counter (per-worker-thread, hot
  path).

The split matters: naming is a rare global operation guarded by a global lock;
incrementing is frequent and uses per-thread counters to avoid contention.

## L2: Data structures

- **`proxy_ctx_t` fields** (defined in `proxy.h`): `user_stats` (array of
  `struct proxy_user_stats_entry`), `user_stats_num`, `user_stats_namebuf`,
  `tunables.max_ustats`. This is the global registry of counter names.
- **`struct proxy_user_stats_entry`**: one counter slot: `name` (heap string),
  `cname` (offset into a name buffer for restart-restored names), and `reset`
  (flag to zero the counter when a name is (re)assigned).
- **`struct proxy_user_stats` (per thread, `t->proxy_user_stats`)**: `counters`
  array and `num_stats`; the actual numeric values live here, one copy per worker.

## L3: Functions

- `int mcplib_add_stat(lua_State *L)` - args `(index, name)`. Validates the index
  range and name (length, no whitespace), grows the global entry array if needed,
  and stores/updates the name. Global-scope only. Returns 0.
- `int mcplib_stat(lua_State *L)` - args `(index, change)`. Adds `change` to the
  calling thread's counter `index`. Must be called from a router/request handler
  (needs a worker thread). Returns 0.

## L4: Function bodies

### `mcplib_add_stat`
1. **Validation.** Rejects index < 1, index above `max_ustats`, names longer than
   `STAT_KEY_LEN - 6` (room for the `user_` prefix + NUL), and any name containing
   whitespace.
2. **Grow under `STAT_L` lock.** If the requested index exceeds the current array,
   it does a "funny realloc": `calloc` a larger zeroed array, `memcpy` the old
   entries in, free the old. Zeroing matters so unused slots have NULL names.
3. **Assign name.** Three cases: an existing `name` that changed (free + strdup +
   set `reset`), a restart-restored `cname` that changed (strdup + `reset`), or an
   empty slot (strdup). If the name is unchanged it does nothing, so re-running a
   config does not reset live counters.

### `mcplib_stat`
Runs on the request path. It fetches the calling worker thread and its
`proxy_user_stats`, bounds-checks the index, then increments
`counters[idx]` under the per-thread write-stats lock (`WSTAT_L`). Because each
worker has its own counter array, the only lock here is the thread's own, so
concurrent workers never contend; the global reporting code sums across threads.
