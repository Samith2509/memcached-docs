# proxy_jump_hash.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_jump_hash.c` implements Google's "jump consistent hash" as a key
*distribution* option for proxy pools. Where `proxy_xxhash.c` turns a key into a
64-bit number, a distribution algorithm turns that number into a bucket index
(which backend server to use). Jump hash is a stateless, allocation-free
consistent-hash that maps a hash to one of N buckets while minimizing how many
keys move when N changes. It exposes:
- `mcplib_open_dist_jump_hash(lua_State *L)` - register the `new` constructor as a
  Lua library so config code can create a jump-hash distributor over a pool.

## L2: Data structures

- **`mcplib_jump_hash_t`** (typedef struct): the per-distributor state.
  - `struct proxy_hash_caller phc` - the common "distribution caller" struct
    (defined in `proxy.h`) the proxy API passes back when routing; holds a `ctx`
    pointer and a `selector_func`.
  - `unsigned int buckets` - the number of servers in the pool. Jump hash needs
    only the count, not the pool contents.

## L3: Functions

- `static uint32_t mcplib_dist_jump_hash_get_server(uint64_t hash, void *ctx)` -
  the selector. Given a key's 64-bit hash and the distributor context, returns the
  bucket index in `[0, buckets)`. This is the pointer stored in `phc.selector_func`
  and is what the router calls per request.
- `static int mcplib_dist_jump_hash_new(lua_State *L)` - Lua constructor. Reads
  the pool table's length (server count), allocates a `mcplib_jump_hash_t` as Lua
  userdata, wires up `phc`, and returns the userdata plus a light-userdata handle
  to `phc`. Returns 2 stack values.
- `int mcplib_open_dist_jump_hash(lua_State *L)` - registers `{"new", ...}` as a
  new Lua library table. Returns 1.

## L4: Function bodies

### `mcplib_dist_jump_hash_get_server`
This is the jump-consistent-hash algorithm. It runs a small loop that treats the
incoming `hash` as the seed of a linear-congruential generator
(`hash = hash * 2862933555777941757 + 1`). Each iteration probabilistically
"jumps" the candidate bucket `b` forward using the ratio of `2^31` to the top
bits of the new hash; the loop stops when the next jump would exceed `buckets`.
The last accepted `b` is the chosen bucket. The result depends only on the hash
and the bucket count, so no lookup table or ring is needed and adding/removing a
server reshuffles only about `1/N` of keys.

### `mcplib_dist_jump_hash_new`
Note the comment in the source: it does not iterate the pool table, it only reads
its length via `lua_rawlen`, because jump hash needs nothing but the server count.
The distributor is allocated as Lua userdata so its lifetime is tied to the Lua
config object and garbage-collected with it. It returns two things: the userdata
(kept alive by Lua) and a light-userdata pointer to the embedded `phc`, which the
C proxy core stores and later calls without going back through Lua.
