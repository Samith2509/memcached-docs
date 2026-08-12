# murmur3_hash.c

Subsystem: Hashing / checksums.

## L1: Purpose and services

`murmur3_hash.c` implements MurmurHash3 (the x86 32-bit variant) by Austin
Appleby. It provides one service, `MurmurHash3_x86_32`, matching the `hash_func`
contract so `hash.c` can install it as the active key hash when the server is
started with `-o hash_algorithm=murmur3`. Like Jenkins it is a fast
non-cryptographic hash whose job is to spread keys evenly across hash-table
buckets. It is an alternative to the default XXH3.

## L2: Data structures

None of its own. Notable local constants and helpers:
- Two mixing constants `c1 = 0xcc9e2d51` and `c2 = 0x1b873593`.
- `h1`, a single 32-bit running hash accumulator.
- `ROTL32(x, y)`, a bit-rotate macro (compiler intrinsic on MSVC, a small inline
  `rotl32` elsewhere).
- `getblock32`, an accessor for reading an aligned 32-bit block (a hook where a
  platform needing endian-swapping or aligned reads would adapt).
- `fmix32`, the finalization mix that avalanches all bits of the result.

## L3: Functions

### `static uint32_t rotl32(uint32_t x, int8_t r)`
Rotate-left of a 32-bit word by `r` bits. Used by the mixing steps. Returns the
rotated value. (Only on non-MSVC compilers; MSVC uses `_rotl`.)

### `static uint32_t getblock32(const uint32_t *p, int i)`
Returns `p[i]`. A one-liner that exists so a port needing byte-swapping or
alignment fixups has a single place to change. Called from the body loop.

### `static uint32_t fmix32(uint32_t h)`
Finalization avalanche: a fixed sequence of xor-shift and multiply steps that
forces every input bit to affect the output. Called once at the end. Returns the
finalized hash.

### `uint32_t MurmurHash3_x86_32(const void *key, size_t length)`
The public hash. Note the signature is trimmed from Murmur's public interface: no
seed argument (seed is fixed at 0) and it returns the value instead of writing
through an out-pointer, so it fits `hash_func`. Called only through the global
`hash` pointer when Murmur3 is configured. Returns the 32-bit hash.

## L4: Function body (`MurmurHash3_x86_32`)

Four parts, the canonical MurmurHash3 layout:

1. **Setup.** Compute `nblocks = length / 4`, initialize `h1 = 0`, and point
   `blocks` at the end of the 4-byte-aligned body region.

2. **Body.** A loop `for (i = -nblocks; i; i++)` walks the 4-byte blocks (using a
   negative index counting up to zero, a neat way to iterate the body). Each block
   `k1` is multiplied by `c1`, rotated left 15, multiplied by `c2`, then xored
   into `h1`; `h1` is rotated left 13 and updated as `h1*5 + 0xe6546b64`. This is
   the core mixing that gives Murmur its distribution.

3. **Tail.** A `switch (length & 3)` folds in the leftover 1..3 bytes (the bytes
   that did not fill a whole 4-byte block), with fall-through cases accumulating
   them into `k1`, then applying the same `c1`/rotate/`c2` treatment and xoring
   into `h1`.

4. **Finalization.** `h1 ^= length`, then `h1 = fmix32(h1)` avalanches the bits.
   Returns `h1`.

The file header notes the x86 and x64 Murmur variants produce different results;
memcached always uses this x86 32-bit variant so hashes are consistent regardless
of the host being 64-bit.
