# md5.c

Subsystem: Crypto / auth / TLS (hash primitive). See `../submodules-overview.md`.

## L1: Purpose and services

`md5.c` is L. Peter Deutsch's public-domain independent implementation of MD5
(RFC 1321). It is a self-contained, vendored primitive - memcached did not write
it and does not modify it. In this codebase MD5 is not used for password hashing
in general; its one internal consumer is `proxy_ring_hash.c`, which uses MD5 to
generate the point hashes for ketama-style consistent hashing. It exposes the
standard three-call streaming hash API:
- `md5_init(md5_state_t *pms)` - start a new digest.
- `md5_append(md5_state_t *pms, const md5_byte_t *data, int nbytes)` - feed bytes.
- `md5_finish(md5_state_t *pms, md5_byte_t digest[16])` - produce the 16-byte digest.

## L2: Data structures

- **`md5_state_t`** (defined in `md5.h`): the running hash state - `count[2]`
  (64-bit message length in bits), `abcd[4]` (the four 32-bit chaining words), and
  `buf[64]` (partial input block).
- **`T1..T64` macros**: the RFC's precomputed sine-derived constants, written as
  `T_MASK ^ k` in places to avoid signed/unsigned constant warnings.
- **`BYTE_ORDER`**: compile-time flag (big/little/unknown); when unknown the code
  detects endianness at run time so the same source works on any platform.

## L3: Functions

- `static void md5_process(md5_state_t *pms, const md5_byte_t *data)` - the core
  transform: mixes one 64-byte block into `abcd`. Internal.
- `void md5_init(md5_state_t *pms)` - zero the length and load the standard initial
  `abcd` constants.
- `void md5_append(md5_state_t *pms, const md5_byte_t *data, int nbytes)` - buffer
  input, running `md5_process` for each full 64-byte block; updates `count`.
- `void md5_finish(md5_state_t *pms, md5_byte_t digest[16])` - append the padding
  and length, run the final block(s), and serialize `abcd` little-endian into the
  16-byte digest.

## L4: Function bodies

This is a textbook RFC 1321 implementation; the only memcached-relevant notes are:

### `md5_process`
Implements the four rounds (F, G, H, I) of 16 operations each over the 16 message
words. It has three code paths selected by `BYTE_ORDER`: a big-endian path, a
little-endian path (which can read the 32-bit words directly), and a neutral path
that assembles each word byte-by-byte when endianness is unknown at compile time.
The result is identical on all platforms.

### `md5_append` / `md5_finish`
`md5_append` handles arbitrary-length input by filling the internal 64-byte `buf`,
processing complete blocks, and keeping the remainder; it also carries the 64-bit
bit-count in `count[2]`. `md5_finish` appends the mandatory `0x80` pad byte,
zero-pads to a 56-byte boundary, appends the little-endian bit length, processes
the final block, and writes the digest. Because it is a vendored primitive with a
fixed, well-known algorithm, there is nothing memcached-specific to document
beyond "it is the standard MD5 used only by the ring-hash distributor."
