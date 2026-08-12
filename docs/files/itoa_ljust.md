# itoa_ljust.c

Subsystem: Utilities. Related optimization notes:
`../optimization-opportunities.md` (finding #6, already optimal).

## L1: Purpose and services

`itoa_ljust.c` converts integers to left-justified ASCII decimal strings, very
fast. Formatting numbers into responses (value lengths, flags, CAS values,
statistics) happens on the hot path for nearly every command, so memcached uses
this specialized routine instead of `sprintf("%llu", ...)`, which is far slower.

Services (declared in `itoa_ljust.h`):
- `itoa_u32` / `itoa_32` - unsigned/signed 32-bit to ASCII.
- `itoa_u64` / `itoa_64` - unsigned/signed 64-bit to ASCII.

Each writes the digits at a caller-supplied buffer position and returns a pointer
just past the last digit, so callers can chain conversions and separators without
rescanning.

## L2: Data structures

- **`static const char lut[201]`**: a lookup table of all two-digit pairs
  `"00","01",...,"99"` concatenated. Indexing `lut[2*d]` gives the two ASCII
  characters for the number `d` in `0..99`. This is the trick that lets the code
  emit two digits per step.

## L3: Functions

### `char *itoa_u32(uint32_t u, char *p)`
Formats an unsigned 32-bit value at `p`. Returns a pointer to the terminating
position (just past the digits). The primary building block; the 64-bit and
signed versions call into it.

### `char *itoa_32(int32_t i, char *p)`
Signed 32-bit: writes a `'-'` if negative (computing the magnitude carefully to
avoid undefined behavior on `INT_MIN`), then delegates to `itoa_u32`.

### `char *itoa_u64(uint64_t u, char *p)`
Unsigned 64-bit. If the value fits in 32 bits it delegates to `itoa_u32`;
otherwise it splits off the high digits recursively and formats the rest.

### `char *itoa_64(int64_t i, char *p)`
Signed 64-bit: sign handling then `itoa_u64`.

### Internal helpers
- `static char *out2(int d, char *p)` - write the two ASCII chars for `d` (0..99)
  by copying 2 bytes from `lut` with a single `memcpy` (a 2-byte store).
- `static char *out1(char in, char *p)` - write one character.
- `static int digits(uint32_t u, unsigned k, int *d, char **p, int n)` - emit the
  leading (possibly single) digit and compute how many digit-pairs remain.
- `static char *itoa(uint32_t u, char *p, int d, int n)` - the fall-through
  `switch` that emits the remaining digit pairs.

## L4: How the body works

The algorithm's speed comes from two ideas:

1. **Two digits at a time.** Rather than computing one digit per `% 10`/`/ 10`, it
   divides by 100 and looks up the two-character string for the remainder in `lut`,
   storing both bytes with one `memcpy` (which the compiler turns into a single
   2-byte store on platforms that allow unaligned access).

2. **A digit-count `switch` with fall-through.** `itoa_u32` first determines the
   number's magnitude bucket via `digits()` (which also emits the single leading
   digit for odd-length numbers), then calls `itoa()`, whose `switch(n)` jumps into
   the right point of a fall-through chain that peels off `d = u / 100000000`,
   `u -= d * 100000000`, and so on down to the last pair. The compiler constant-
   folds these divisions by powers of ten into fast multiply-shift sequences.

`itoa_u64` handles the fact that a 64-bit number can exceed what the 32-bit path
covers by recursively formatting the upper portion (`u / 1000000000`) first, then
the lower nine digits. The signed wrappers compute `-u` on the unsigned value to
sidestep the undefined behavior of negating `INT_MIN`/`INT64_MIN` as signed.

There is nothing to vectorize here: the work is inherently sequential and already
near the practical floor, which is why the optimization review left it unchanged.
