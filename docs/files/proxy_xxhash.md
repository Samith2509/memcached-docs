# proxy_xxhash.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_xxhash.c` registers the xxHash (XXH3, 64-bit) hash function as a key
hashing option for the proxy's key distribution layer. When a Lua proxy config
builds a pool, it can choose a hash function used to turn a request key into a
64-bit value; that value is then fed to a distribution algorithm (jump hash,
ring/ketama hash) to pick a backend server. This file provides the xxHash
choice. It exposes one Lua-openable function:
- `mcplib_open_hash_xxhash(lua_State *L)` - push the xxHash hash descriptor onto
  the Lua stack so config code can select it.

## L2: Data structures

- **`struct proxy_hash_func mcplib_hash_xxhash`** (static): a one-field
  descriptor holding a function pointer to `XXH3_64bits_withSeed`. `struct
  proxy_hash_func` is defined in `proxy.h` and is the common shape every key-hash
  option uses, so the distribution code can call any hash uniformly.

## L3: Functions

- `int mcplib_open_hash_xxhash(lua_State *L)` - pushes `&mcplib_hash_xxhash` as a
  Lua light userdata (a bare pointer with no metatable) and returns 1 (one Lua
  return value). Called from the proxy Lua module setup when the built-in
  `xxhash` name is registered. Returns 1 (stack value count), per Lua C-function
  convention.

## L4: Function bodies

The file is deliberately tiny. `mcplib_open_hash_xxhash` does no work beyond
handing the config layer a pointer to the static descriptor; the actual hashing
happens later inside the distribution code, which calls the stored
`XXH3_64bits_withSeed` pointer. There is no per-instance state because the hash
function is stateless (seed is passed per call), so a single shared descriptor is
enough. This is the simplest example of the "hash option" plug-in pattern used by
`proxy_jump_hash.c` and `proxy_ring_hash.c`.
