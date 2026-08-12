# proxy_ring_hash.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_ring_hash.c` implements ketama-style consistent hashing (a hash ring /
"continuum") as a key distribution option for proxy pools, plus the MD5-based key
hasher that traditional ketama clients expect. Unlike jump hash, a ring places
many weighted points per server on a 32-bit circle and routes a key to the next
point clockwise, which lets it interoperate byte-for-byte with existing client
libraries. It supports four compatibility layouts so a proxy can slot in front of
clients that already ketama-hash a specific way. Entry point:
- `mcplib_open_dist_ring_hash(lua_State *L)` - register the `new` constructor and
  the ketama `hash` function.

## L2: Data structures

- **`cpoint`**: one point on the continuum - `point` (32-bit position) and `id`
  (1-based server id).
- **`ketama_t`**: the distributor - embeds `struct proxy_hash_caller phc`,
  `total_buckets`, and a flexible-array `continuum[]` of sorted `cpoint`s.
- **`ketama_key_hash`** (`struct proxy_hash_func`): the key hasher that pairs with
  this distributor (`ketama_key_hasher`, MD5-based).
- **Mode macros**: `MODE_DEFAULT` (xxhash points), `MODE_KETAMA`, `MODE_TWEMPROXY`,
  `MODE_EVCACHE` - four ways of building the hash string / points to match
  different client ecosystems.
- **`DEFAULT_BUCKET_SIZE` (160)**: default points per server.

## L3: Functions

- `static uint64_t ketama_key_hasher(key, len, seed)` - MD5 the key and fold the
  first 4 digest bytes into a 32-bit point (seed ignored). This is the paired
  key-hash function.
- `static uint32_t ketama_get_server(uint64_t hash, void *ctx)` - the selector:
  binary-search the sorted continuum for the next point clockwise; returns a
  0-indexed server id.
- `static void ketama_md5_digest(...)` / `static int ketama_compare(...)` - MD5
  helper and qsort comparator for points.
- `static void _add_server_{default,ketama,twemproxy,evcache}(...)` - build the
  continuum points for one server under each compatibility mode.
- `static int ketama_new(lua_State *L)` - constructor: parse options, allocate the
  continuum, add every server's points, sort, and return the distributor.
- `int mcplib_open_dist_ring_hash(lua_State *L)` - Lua library registration.

## L4: Function bodies

### `ketama_get_server` (the lookup)
A binary search over the sorted `continuum` for the point whose value is the
smallest one `>= hash` (with the predecessor `< hash`). If the search walks off
the end it wraps to `continuum[0]` - this is the "ring" wrap-around that makes the
hash circular. It returns `id - 1` because ids are stored 1-based but the proxy
API wants 0-based indices.

### `ketama_new` (build the ring)
1. **Options.** Reads the pool table length (server count) and an optional
   `{omode, obuckets}` table, mapping `omode` to one of the four `MODE_*` layouts
   and validating `obuckets`.
2. **Allocate.** Sizes one userdata block for `ketama_t` plus
   `total * bucket_size` `cpoint`s (flexible array), so the whole continuum is one
   allocation owned by Lua's GC.
3. **Populate.** Iterates the pool with `lua_next`, pulling each server's `id`,
   `addr`, `port`, computing a safe hash-string buffer size, and dispatching to the
   mode-specific `_add_server_*` to append that server's points.
4. **Sort + wire.** `qsort`s the points by position, sets `phc.ctx`/`selector_func`,
   and returns the userdata plus a light-userdata handle to `phc`.

### The four `_add_server_*` variants
All build point positions from a hash of `addr:port-replica` strings, differing
only in the *string format and hash*: `default` uses xxhash and one point per
replica; `ketama`/`twemproxy`/`evcache` use MD5 and extract four points per digest
(`bucket_size / 4` iterations x 4). `twemproxy` drops the default `11211` port
from the string, and `evcache` repeats the address, each matching how that
ecosystem's clients build their rings - the whole point of the file is exact
wire-compatibility with those layouts.
