# jenkins_hash.c

Subsystem: Hashing / checksums.

## L1: Purpose and services

`jenkins_hash.c` implements Bob Jenkins' `hashlittle` function (a.k.a. lookup3),
memcached's historical default key hash. It provides one service: `jenkins_hash`,
a function matching the `hash_func` contract (`uint32_t (*)(const void *, size_t)`)
so `hash.c` can install it as the active hash. It is selected when the server is
started with `-o hash_algorithm=jenkins`, and is kept mainly for compatibility
with clusters and warm restarts that were built with it. The default today is
XXH3.

Jenkins' hash is a non-cryptographic hash designed to mix input bits thoroughly
and cheaply so that keys spread evenly across hash-table buckets, which keeps hash
chains short.

## L2: Data structures

None of its own. It uses:
- Local scalars `a`, `b`, `c` (three 32-bit words) that hold the running internal
  state during mixing.
- A small `union { const void *ptr; size_t i; } u` used to test the alignment of
  the key pointer without triggering pointer/integer type-punning warnings.
- The endianness macro `HASH_LITTLE_ENDIAN`, set at compile time, which selects
  the little-endian fast path.

## L3: Functions

### `uint32_t jenkins_hash(const void *key, size_t length)`
The public hash. Consumes `length` bytes of `key` and returns a 32-bit hash.
Called only through the global `hash` pointer (installed by `hash_init`), so its
callers are effectively `assoc_*`, item locking, and the LRU code whenever Jenkins
is the configured algorithm. Returns the mixed 32-bit value; returns the seed-only
value `c` for a zero-length key.

The file also contains the `mix()` and `final()` macros (the reversible bit-mixing
and avalanche steps) that the function body relies on.

## L4: Function body

The body has three parts, matching the classic lookup3 structure:

1. **Seed the state.** `a = b = c = 0xdeadbeef + length`. All three words start
   from the same length-dependent seed so that different-length keys diverge
   immediately.

2. **Bulk mixing (aligned little-endian fast path).** When the machine is
   little-endian and the key is 4-byte aligned, the code reads the key as 32-bit
   words. A `while (length > 12)` loop adds three words into `a,b,c`, calls
   `mix(a,b,c)`, advances the pointer by 3 words, and subtracts 12 from the
   remaining length. Processing 12 bytes per iteration is what makes it fast.

3. **Tail handling.** A `switch (length)` handles the final 1..12 bytes. The
   non-Valgrind path uses a deliberate trick: for a partial trailing word it reads
   a full aligned 32-bit word and masks off the bytes past the key end
   (`k[2]&0xffffff`, etc.). Because the read stays inside the same aligned word as
   the key, it never crosses a page boundary, so it is safe on real hardware but
   noticeably faster than byte-by-byte reads for short keys (like English words).
   A separate `#ifdef VALGRIND` branch does the same result with byte reads so the
   memory checker does not flag the intentional over-read. `case 0` returns `c`
   directly (empty key needs no mixing). After the tail is folded in, `final()`
   avalanches the bits and the function returns `c`.

There is also a big-endian branch (not the common case here) that reads bytes in
big-endian order; it mirrors the same three-part structure.
