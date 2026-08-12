# util.c

Subsystem: Utilities.

## L1: Purpose and services

`util.c` is a grab bag of small, dependency-light helpers used all over the
codebase. Nothing here is memcached-specific policy; it is safe parsing, string
copying, URL encoding, byte-order conversion, and a couple of time/error helpers.
Its services fall into four groups:

- **Safe number parsing** (`safe_strtoull`, `safe_strtoll`, `safe_strtoul`,
  `safe_strtol`, `safe_strtod`, `safe_strtoull_hex`): parse a string into an
  integer/double and return a clean success/failure bool, rejecting garbage and
  overflow. Used everywhere client input is turned into numbers (protocol parsing,
  option parsing).
- **Safe strings** (`safe_strcpy`, `safe_memcmp`): bounded copy and constant-time
  comparison.
- **URL encoding** (`uriencode_init`, `uriencode`, `uriencode_p`): percent-encode
  bytes that are not URL-safe, used when emitting keys into logs and stats dumps.
- **Byte order and misc** (`ntohll`/`htonll`, `vperror`, `mc_timespec_add`).

## L2: Data structures

- **`static char *uriencode_map[256]`**: for each byte value, either `NULL` (the
  byte is URL-safe and passes through) or a pointer to its 3-char `%XX` encoding.
  A lookup table that turns encoding into a single array access per byte.
- **`static char uriencode_str[768]`**: the backing storage for those `%XX`
  strings (256 entries times 3 bytes). `uriencode_map` points into this.

Both are filled once by `uriencode_init()` at startup and read-only thereafter, so
they need no locking.

## L3: Functions

### `void uriencode_init(void)`
Builds the `uriencode_map`/`uriencode_str` tables. Marks alphanumerics and
`-._~` as safe (map entry `NULL`) and precomputes `%XX` for everything else.
Called once at startup. No return.

### `bool uriencode(const char *src, char *dst, size_t srclen, size_t dstlen)`
Percent-encodes `src` into `dst`, checking `dstlen` so it never overflows, and
null-terminates. Returns `true` on success, `false` if `dst` is too small. Used
where the destination size is bounded and must be respected.

### `char *uriencode_p(const char *src, char *dst, size_t srclen)`
The unchecked, faster variant: no destination length check and no null
termination. The caller must guarantee `dst` is at least `3 * srclen`. Returns a
pointer just past the last written byte (so callers can keep appending). Used on
hot paths where the buffer size is known to be sufficient.

### `bool safe_strtoull(const char *str, uint64_t *out)` and siblings
Each wraps the corresponding libc `strtoull`/`strtoll`/`strtoul`/`strtol`/`strtod`
and adds strict validation: it rejects `ERANGE` overflow, rejects strings with no
digits, and requires the number to be followed by whitespace or end-of-string
(no trailing junk). The unsigned variants additionally reject a hidden minus sign.
`safe_strtoull_hex` is the base-16 version (kept separate deliberately to avoid a
base parameter on every caller). Each returns `true` and writes `*out` on success,
`false` otherwise. These are the standard way protocol and option code turns text
into numbers.

### `bool safe_strcpy(char *dst, const char *src, size_t dstmax)`
Copies at most `dstmax-1` bytes and always null-terminates, without over-reading
`src` past its null. Returns `true` if the whole string fit, `false` if it was
truncated.

### `bool safe_memcmp(const void *a, const void *b, size_t len)`
Constant-time equality: it ORs together the xor of every byte pair and only
checks the accumulator at the end, so timing does not reveal where two buffers
first differ. Uses `volatile` pointers to stop the compiler short-circuiting.
Returns `true` if equal. Used for comparing secrets (auth tokens) where timing
side channels matter.

### `void vperror(const char *fmt, ...)`
A `printf`-style wrapper around `perror`: formats the message, then calls
`perror` so the current `errno` string is appended. Preserves `errno` across the
formatting. No return.

### `uint64_t ntohll(uint64_t)` / `uint64_t htonll(uint64_t)`
64-bit network/host byte-order conversion, compiled only when the platform lacks a
native `htonll` (`#ifndef HAVE_HTONLL`). Both call `mc_swap64`, which byte-swaps on
little-endian machines and is a no-op on big-endian. Used by the binary protocol
for 64-bit fields (CAS values).

### `void mc_timespec_add(struct timespec *ts1, struct timespec *ts2)`
Adds `ts2` into `ts1`, carrying nanoseconds into seconds. Used for computing
absolute wait deadlines for condition variables. No return.

## L4: Notes on the bodies

The safe-parse functions share one careful idiom worth internalizing: after
`strtoX`, they check `errno == ERANGE` and `str == endptr` (nothing parsed), then
require `*endptr` to be whitespace or `'\0'`. The unsigned versions add the subtle
"negative that wrapped to a huge unsigned" check: if the parsed value looks
negative when reinterpreted as signed, they scan the original text with `memchr`
for a `'-'` and reject it. This is why memcached does not accept `set key ... -1`
as a giant unsigned length.

`safe_memcmp`'s constant-time property comes entirely from never branching on the
data: `delta |= ua[x] ^ ub[x]` runs the full length regardless of early
mismatches. Do not "optimize" it with an early return.
