# crc32c.c

Subsystem: Hashing / checksums. Related optimization notes:
`../optimization-opportunities.md` (finding #4).

## L1: Purpose and services

`crc32c.c` computes the CRC-32C checksum (the iSCSI/Castagnoli polynomial, *not*
the CRC-32 used by zip/gzip/Ethernet). It is used for data integrity, not for key
hashing: extstore (`extstore.c`) and warm-restart (`restart.c`) checksum on-disk
and persisted data with it so corruption can be detected.

Its headline feature is runtime CPU dispatch. It provides:
- `crc32c_init()` - detect CPU support once at startup and point the global
  `crc32c` function pointer at the fastest available implementation.
- the global `crc32c` pointer - `crc_func crc32c;`, what callers actually invoke.

There are two backends: a hardware path using the CPU's CRC instruction
(`crc32q`/`crc32b` on x86 SSE4.2, the ARMv8 CRC instructions on aarch64) and a
portable software path using lookup tables. This is the reference example in this
codebase of the "detect at startup, install a function pointer, fall back to C"
pattern discussed in `specs/02-exploring-asm-simd-further/spec.md`.

## L2: Data structures

- **`crc_func crc32c`** (global pointer, defined here): the installed
  implementation. Type is `uint32_t (*)(uint32_t crc, const void *buf, size_t len)`.
- **`crc32c_long[4][256]` and `crc32c_short[4][256]`** (static tables): precomputed
  "shift a CRC forward by N zero bytes" operators, used by the hardware path to
  combine three independently computed partial CRCs. Built once via
  `pthread_once`.
- **`POLY` (0x82f63b78)**: the CRC-32C polynomial in reversed bit order.
- Block-size macros **`LONG` (8192)** and **`SHORT` (256)**: the interleave block
  sizes for the three-way-parallel hardware computation.

## L3: Functions

### GF(2) helpers (software table construction)
- `static uint32_t gf2_matrix_times(uint32_t *mat, uint32_t vec)` - multiply a
  bit-vector by a 32x32 binary matrix over GF(2). Building block for the shift
  operators. Returns the product vector.
- `static void gf2_matrix_square(uint32_t *square, uint32_t *mat)` - square a
  matrix over GF(2). Used to repeatedly double the number of zero bits an operator
  represents.
- `static void crc32c_zeros_op(uint32_t *even, size_t len)` - build the operator
  that advances a CRC as if `len` zero bytes were appended.
- `static void crc32c_zeros(uint32_t zeros[][256], size_t len)` - expand that
  operator into four 256-entry byte-indexed lookup tables for fast application.
- `static uint32_t crc32c_shift(uint32_t zeros[][256], uint32_t crc)` - apply the
  four-table operator to a CRC in one step. Used to stitch the parallel partial
  CRCs together.

### Hardware path
- `static void crc32c_init_hw(void)` - one-time table initialization
  (`crc32c_zeros` for LONG and SHORT). Called via `pthread_once`.
- `static uint32_t crc32c_hw(uint32_t crc, const void *buf, size_t len)` - the
  hardware CRC. Installed into `crc32c` when the CPU supports the CRC instruction.
  Returns the CRC of `buf` continuing from `crc`.

### Software path
- `crc32c_sw_little` / `crc32c_sw_big` (table-driven, endian-specific) - the
  portable fallback used when there is no hardware CRC. Selected by endianness.

### Feature detection and install
- `SSE42(have)` (macro, x86) - run `cpuid` and report whether SSE4.2 (hence the
  CRC instruction) is present.
- `void crc32c_init(void)` - the public entry point. Detects CPU support and sets
  `crc32c` to `crc32c_hw` or the software function. Called once at startup.
  Returns nothing.

## L4: Function bodies (the interesting ones)

### `crc32c_hw` (the three-way parallel hardware CRC)
This is the performance-critical body. It exploits the fact that the `crc32q`
instruction has a throughput of one per cycle but a latency of three cycles, so
running three independent CRC chains in parallel keeps the pipeline full.

1. **First call setup + preprocess.** `pthread_once` builds the shift tables the
   first time. The incoming CRC is complemented (`crc = ~crc`) into a 64-bit
   `crc0` (so the 64-bit `crc32q` instruction can be used).
2. **Align to 8 bytes.** A small loop issues `crc32b` (byte CRC) until the data
   pointer is 8-byte aligned.
3. **LONG blocks.** While at least `LONG*3` (24 KB) bytes remain, it runs three
   `crc32q` chains over three interleaved `LONG`-byte spans, then combines the
   three partial CRCs with `crc32c_shift(crc32c_long, ...)` and xor. This is the
   inlined assembly at the core of the file.
4. **SHORT blocks.** The same trick on `SHORT*3` (768-byte) spans for the
   remainder, combined via `crc32c_short`.
5. **Trailing 8-byte units and bytes.** A `crc32q` loop for whole 8-byte units,
   then a `crc32b` loop for up to seven trailing bytes.
6. **Postprocess.** Return `~crc0`.

### `crc32c_init`
Wrapped in `#if defined(__x86_64__)` / `#elif defined(__aarch64__)` so the
architecture is chosen at compile time. Inside, the CPU feature is checked at
run time: on x86 via the `SSE42` `cpuid` macro; on Linux/ARM via
`getauxval(AT_HWCAP) & HWCAP_CRC32`; on macOS/ARM via `sysctlbyname`. It always
assigns the software function first, then upgrades to `crc32c_hw` only if the
feature is present, so an unknown or old CPU safely lands on the software path.

### The GF(2) table builders
`crc32c_zeros_op` and friends implement the math for "how would this CRC look if I
appended N zero bytes". They start from the one-bit operator (the polynomial),
repeatedly square it to double the zero-bit count, and stop when they reach the
requested length. `crc32c_zeros` then turns that 32x32-bit operator into four
byte-indexed tables so `crc32c_shift` can apply it with four table lookups and
three xors instead of a bit-by-bit matrix multiply. This machinery only exists to
make step 3/4 of `crc32c_hw` cheap.
