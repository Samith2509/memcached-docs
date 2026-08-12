# base64.c

Subsystem: Crypto / auth / TLS (grouped there for build purposes; it is a general
encoding helper). Related optimization notes:
`../optimization-opportunities.md` (finding #3).

## L1: Purpose and services

`base64.c` implements RFC 1341 Base64 encoding and decoding. memcached uses it for
binary-safe keys: the meta protocol lets clients send keys that contain bytes that
are not valid in the text protocol by base64-encoding them, and the LRU crawler's
key dumps base64-encode keys on the way out. The auth-file code also uses Base64.

Services (declared in `base64.h`):
- `base64_encode(src, len, out, out_len)` - encode bytes to Base64 text.
- `base64_decode(src, len, out, out_len)` - decode Base64 text back to bytes.

Both take caller-provided output buffers (no internal allocation) and return the
number of bytes produced, or `0` on failure (bad input, insufficient space, or
overflow).

## L2: Data structures

- **`static const unsigned char base64_table[65]`**: the 64-character encoding
  alphabet (`A-Za-z0-9+/`), indexed by a 6-bit value to get the output character.
- **`static const unsigned char dtable[256]`**: the reverse map, indexed by an
  input byte to get its 6-bit value, with `128` (0x80) marking "not a Base64
  character". Pre-generated so decode never rebuilds it.

## L3: Functions

### `size_t base64_encode(const unsigned char *src, size_t len, unsigned char *out, size_t out_len)`
Encodes `len` bytes into `out`. First it computes the output length (4 chars per
3-byte group, plus padding and a nul), and refuses to proceed if that would
overflow or exceed `out_len` or if `out` is NULL. Returns the number of characters
written (not counting the nul), or `0` on failure. Callers: meta-protocol key
emission (`proto_text.c`), the LRU crawler (`crawler.c`).

### `size_t base64_decode(const unsigned char *src, size_t len, unsigned char *out, size_t out_len)`
Decodes `len` characters of Base64 into raw bytes in `out`. Returns the number of
decoded bytes, or `0` on failure (no valid characters, a count not a multiple of 4,
insufficient output space, or invalid padding). Callers: meta-protocol key parsing
(`proto_text.c`, `proto_parser.c`).

## L4: Function bodies

### `base64_encode`
1. **Size and safety check.** Compute `olen` from `len`, add slack for the (unused
   here) line-feed accounting and the nul, and bail out to `0` on overflow, on
   `out` too small, or `out == NULL`.
2. **Main loop.** While at least 3 input bytes remain, take three bytes and emit
   four output characters by slicing them into four 6-bit fields
   (`in[0]>>2`, `((in[0]&3)<<4)|(in[1]>>4)`, `((in[1]&0xf)<<2)|(in[2]>>6)`,
   `in[2]&0x3f`), each used to index `base64_table`.
3. **Tail.** Handle the final 1 or 2 leftover bytes, emitting the appropriate
   characters and `'='` padding.
4. Nul-terminate and return the character count.

### `base64_decode`
1. **Count valid characters.** A first pass counts input bytes that map to a real
   Base64 value (skipping whitespace/newlines via the `0x80` sentinel), and rejects
   input whose valid count is zero or not a multiple of 4.
2. **Size check.** `olen = count/4 * 3` must fit in `out_len`.
3. **Decode loop.** A second pass gathers valid characters four at a time into a
   `block[4]` of 6-bit values, then packs them into three output bytes. It tracks
   `'='` padding and, once a full quartet with padding is seen, trims 1 or 2
   trailing bytes accordingly and stops; invalid padding returns `0`.
4. Return the number of decoded bytes.

Both loops are scalar and byte-oriented. The optimization review notes they are
clean candidates for a SIMD (SSE/AVX2) rewrite, but because keys are small the
per-call win is modest, so it is medium priority.
