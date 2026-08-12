# hash.c

Subsystem: Hashing / checksums. See `../submodules-overview.md` and
`../architecture.md` (section 5, the hash table).

## L1: Purpose and services

`hash.c` is a tiny dispatcher that chooses which key-hashing algorithm the whole
server uses, and exposes it through a single global function pointer named `hash`.
Every part of memcached that needs to turn a key into a 32-bit hash value (the
hash table in `assoc.c`, item locking in `thread.c`, the LRU code) calls
`hash(key, len)` without caring which algorithm is behind it.

It offers exactly one service: `hash_init(type)`, called once at startup, which
points `hash` at one of three implementations:

- **XXH3** (the default) - fast, high quality, lives entirely in `xxhash.h`.
- **Jenkins** (`jenkins_hash.c`) - the historical default, kept for compatibility.
- **Murmur3** (`murmur3_hash.c`) - an alternative.

The reason for a runtime pointer rather than a compile-time choice is that the
hash algorithm is a startup option (`-o hash_algorithm=...`), and warm restart
requires the same algorithm to be reselected so existing keys still land in the
same buckets.

## L2: Data structures

This file defines no structs of its own. It works with two things declared
elsewhere:

- **`hash_func hash`** (global, defined here; type in `hash.h`):
  `typedef uint32_t (*hash_func)(const void *key, size_t length);`. This is the
  single indirection point every hashing call site goes through. Defined in this
  file so there is exactly one copy in the program.
- **`enum hashfunc_type`** (in `hash.h`): `JENKINS_HASH`, `MURMUR3_HASH`,
  `XXH3_HASH`. Used only to tell `hash_init` which algorithm to install.

The `#define XXH_INLINE_ALL` before `#include "xxhash.h"` pulls the entire xxHash
implementation inline into this translation unit, which is why there is no
separate `xxhash.c` in the build.

## L3: Functions

### `static uint32_t XXH3_hash(const void *key, size_t length)`
A thin adapter. xxHash's `XXH3_64bits` returns a 64-bit value, but memcached's
`hash_func` contract is 32-bit, so this truncates the result to `uint32_t`.
Called only indirectly through the `hash` pointer when XXH3 is the active
algorithm. Returns the low 32 bits of the 64-bit XXH3 hash.

### `int hash_init(enum hashfunc_type type)`
The one public entry point. Installs the chosen algorithm into the global `hash`
pointer and records its name in `settings.hash_algorithm` (for the `stats`
output). Called once from `main()` during startup, and again by the warm-restart
path so a restarted process uses the same algorithm as before. Returns `0` on
success, or `-1` if `type` is not a recognized value.

## L4: Function bodies

### `hash_init`
A single `switch` on `type`:
- `JENKINS_HASH`: set `hash = jenkins_hash` and the name string to `"jenkins"`.
- `MURMUR3_HASH`: set `hash = MurmurHash3_x86_32`, name `"murmur3"`.
- `XXH3_HASH`: set `hash = XXH3_hash` (the adapter above), name `"xxh3"`.
- `default`: return `-1` without touching `hash`.

After a successful case it falls through to `return 0`. There is no locking; this
runs once before any worker thread exists, so no synchronization is needed.
