
- Memcached in general is used on serverside is my assumption. And I belive lot of servers are x86 architectures. 

- However, the application should run on windows, mac OS, Linux operating systems that are using ARM or X86_32 or X86_64 or some other process architecture.

- Some old servers may not have SIMD 512 bit extensions. Some may have SSE and some may have support only for AVX or only or SSE2, or SSE3 etc.

- How can the code be written such that at the start of the app it figures out what extensions are available and then uses the asm code for that , and fallback to c implemention? Should we have function pointer arrays where each implementation may be mentioned and the implementation that is best for the specific server is picked at run time.

---

# Answers

Good news first: memcached already does exactly what you are describing, in two
places. Understanding those two examples answers most of the question, and the
rest is about picking the least error prone mechanism for new code.

## 1. Separate two different problems: which CPU, and which OS/architecture

There are two independent axes, and they are solved at different times.

- **Architecture family (x86 vs ARM vs others): decided at compile time.**
  An AVX2 instruction simply does not exist on ARM, and a NEON instruction does
  not exist on x86. You cannot choose between them at run time because the
  binary for one CPU family is never even built with the other family's
  instructions. So the outer selection is always a compile-time `#ifdef`:
  `#if defined(__x86_64__)`, `#if defined(__aarch64__)`, and a plain-C fallback
  for everything else. You ship a different binary per architecture anyway (a Mac
  ARM build, a Linux x86-64 build, a Windows x86-64 build), so this is free.

- **Feature level within one architecture (SSE2 vs SSE4.2 vs AVX2 vs AVX-512 on
  x86; NEON vs SVE on ARM): decided at run time.**
  This is the interesting case. A single x86-64 binary might run on a 2009 CPU
  with only SSE4.2 or a 2020 CPU with AVX-512. Here you detect the CPU at startup
  and pick the best implementation you compiled in.

So the shape of the code is: compile-time `#ifdef` chooses the architecture block,
and inside the x86 block a run-time check chooses SSE2 vs AVX2 vs AVX-512.

## 2. How to detect features at run time

You do not parse `/proc/cpuinfo`. Each platform has a proper API:

- **x86, any compiler/OS:** the `cpuid` instruction. GCC and Clang give you
  `__builtin_cpu_init()` + `__builtin_cpu_supports("avx2")`, which is the easiest
  portable form. The lower-level way (what `crc32c.c` uses) is the `cpuid`
  inline asm / `__get_cpuid`. On MSVC you use the `__cpuid` / `__cpuidex`
  intrinsics.
- **ARM on Linux:** `getauxval(AT_HWCAP)` and `AT_HWCAP2`, testing bits like
  `HWCAP_CRC32`, `HWCAP_ASIMD` (NEON), `HWCAP2_SVE`. memcached already does this
  for CRC32 in `crc32c_init()`.
- **ARM on macOS (Apple Silicon):** `sysctlbyname("hw.optional.arm.FEAT_...")`,
  again already used in `crc32c_init()` for the CRC32 feature. NEON is always
  present on Apple Silicon, so you rarely need to check the baseline.
- **Windows:** `IsProcessorFeaturePresent(...)` for coarse checks, or the
  `__cpuid` intrinsic for fine-grained x86 features.

Look at `crc32c.c`: the whole file is wrapped in `#if defined(__x86_64__)` /
`#elif defined(__aarch64__)`, and inside each block `crc32c_init()` sets a
function pointer based on a run-time feature test. That is the template to copy.

## 3. How to select the implementation: four mechanisms

### (a) A plain function pointer, resolved once at startup (memcached's style)

This is what memcached uses for both the hash and the CRC:

```c
/* hash.h */
typedef uint32_t (*hash_func)(const void *key, size_t length);
extern hash_func hash;           /* one global pointer */

/* hash.c: hash_init() sets it once, at boot, based on config */
hash = XXH3_hash;                /* or jenkins, or murmur3 */
```

`crc32c.c` does the same but keyed on the CPU instead of on a config option:
`crc32c_init()` sets `crc32c = crc32c_hw;` when the hardware CRC feature is
present, else `crc32c = crc32c_sw;`. Every caller just calls `crc32c(...)` and
never knows which one it got.

To extend this to SIMD levels, you write several implementations and pick in the
init function:

```c
void hash_dispatch_init(void) {
    __builtin_cpu_init();
#if defined(__x86_64__)
    if (__builtin_cpu_supports("avx2"))      hash = hash_avx2;
    else if (__builtin_cpu_supports("sse4.2")) hash = hash_sse42;
    else                                      hash = hash_scalar;
#elif defined(__aarch64__)
    hash = hash_neon;                         /* NEON is baseline on aarch64 */
#else
    hash = hash_scalar;                       /* portable C fallback */
#endif
}
```

This is the recommended default for memcached because it matches the code that is
already there, it is trivial to read, and the scalar version is always present as
a fallback.

### (b) GCC/Clang function multiversioning: `target_clones`

The compiler generates the variants and the dispatcher for you:

```c
__attribute__((target_clones("avx2","sse4.2","default")))
uint32_t hash_mv(const void *key, size_t len) { ... same C body ... }
```

The compiler compiles the body three times (once with AVX2 enabled, once with
SSE4.2, once baseline), and installs an ifunc resolver that picks the right one
on first call. You write the algorithm once and let the autovectorizer do the
SIMD. Great for "let the compiler vectorize this loop for me". Limitation: it only
helps if the compiler can vectorize your C; it does not help if you hand-wrote
intrinsics for a specific width. GCC on x86 only, reasonably portable; MSVC has no
equivalent.

### (c) GNU indirect functions (ifunc) directly

You write a resolver that returns the address of the chosen implementation, and
the symbol is patched once by the dynamic linker at load time:

```c
static hash_func resolve_hash(void) { ...cpuid... return hash_avx2; }
uint32_t hash(const void*, size_t) __attribute__((ifunc("resolve_hash")));
```

This is how glibc dispatches `memcpy`/`memcmp`/`memchr`. Advantage over (a): the
call becomes a normal PLT call, resolved at load time, with no per-call pointer
load from a global. Disadvantage: it is Linux/ELF specific and harder to debug.
For memcached's own functions, (a) is simpler and portable; ifunc is worth it
only for the very hottest leaf functions.

### (d) Let the upstream library do it

For xxHash specifically (the default hash), you do not have to write any of this:
xxHash ships `xxh_x86dispatch.c` / `XXH3_..._dispatch()` which does CPUID and picks
scalar/SSE2/AVX2/AVX-512 at run time internally. Compiling that in is the cleanest
fix for the "XXH3 stuck on SSE2" finding in `optimization-opportunities.md`, and it
needs no changes to `hash.c`'s pointer scheme beyond pointing at the dispatched
entry point.

## 4. Your specific question: one pointer per operation, or an array of them?

Use **one resolved pointer per operation**, not a big array that you index on
every call. Reasoning:

- The array-indexed-at-call-site design (`impls[cpu_level](args)`) pays for a
  bounds/level lookup and an indirect call on every single invocation, and it
  keeps every implementation reachable, which the linker cannot prune.
- The single-pointer design resolves the choice exactly once at startup
  (`crc32c_init`, `hash_init`) and then every call is one indirect jump through a
  hot, always-cached global. That is what memcached already does, and the branch
  predictor learns the target immediately because it never changes after boot.

An **array is still useful, but as a registry, not as the call path.** A clean
structure is:

```c
struct hash_impl { const char *name; int min_feature; hash_func fn; };
static const struct hash_impl hash_impls[] = {
    { "avx2",   FEAT_AVX2,  hash_avx2  },
    { "sse4.2", FEAT_SSE42, hash_sse42 },
    { "scalar", FEAT_NONE,  hash_scalar },
};
```

At startup you walk this table from best to worst, pick the first entry whose
`min_feature` the CPU supports, and store `hash = entry->fn` (the single pointer).
The table also gives you a name for stats output and, importantly, a way to force
a specific implementation for testing (see below). So: array to *describe and
select*, single pointer to *call*.

## 5. The build-system catch you must not miss

You cannot compile the whole program with `-mavx2`, because then the compiler is
free to emit AVX2 anywhere, including in the dispatcher and the scalar fallback,
and the binary will crash with SIGILL on an old CPU before your detection code
even runs. Two safe ways:

1. **Per-function target attribute:** `__attribute__((target("avx2")))` on just
   `hash_avx2`. The rest of the file stays baseline. This is the least fiddly.
2. **Per-file flags:** put each SIMD variant in its own `.c` and compile only that
   file with `-mavx2` (an automake per-target `_CFLAGS`). The dispatcher and
   fallback stay in baseline TUs.

Either way, the dispatcher itself and the scalar path must be compiled at the
baseline ISA (SSE2 on x86-64) so they are always safe to run.

## 6. Practical cautions

- **Always keep the scalar C fallback and always reach it by default.** memcached
  does: `crc32c = crc32c_sw;` first, then upgrade only if a feature is found. New
  CPUs, odd libc/kernel combos, and non-x86/non-ARM targets all land on scalar
  and still work.
- **Do not dispatch tiny operations per call.** If a function processes only a few
  bytes, the indirect call plus SIMD setup can cost more than a scalar loop.
  Either resolve once and amortize (fine for buffer functions like hashing or
  base64), or, for very small inputs, inline a size check and only branch into
  SIMD above a threshold.
- **Make the choice observable and overridable.** Expose the chosen implementation
  in `stats` (memcached already prints `hash_algorithm`) and allow forcing one via
  a startup flag or env var. This is essential for benchmarking variants and for
  reproducing bugs that only appear on one code path.
- **Feature bits are not independent.** "Has AVX-512F" does not imply the specific
  AVX-512 subset you used (BW, VL, VBMI). Check the exact features your code needs,
  and remember some CPUs downclock heavily under AVX-512, so wider is not always
  faster. Benchmark before preferring AVX-512 over AVX2.

## 7. Recommended approach for memcached

1. For the default hash, compile in xxHash's own runtime dispatch (mechanism (d));
   it is the lowest-risk fix and needs almost no new code.
2. For new hand-written SIMD (a vectorized base64, the tokenizer scan), follow the
   existing `crc32c.c` template: an `#ifdef` per architecture, an `_init()` that
   does the run-time feature check, a descriptor table to select from, and a
   single function pointer to call. Mark each SIMD variant with
   `__attribute__((target(...)))` so the baseline build stays safe.
3. Keep every operation's scalar C version as the guaranteed fallback, selected by
   default and used on all architectures without a specialized path.

In short: yes to run-time selection, yes to a table of implementations as a
registry, but resolve to a single function pointer per operation at startup rather
than indexing an array on every call. That is both the fastest and the pattern the
codebase already follows.