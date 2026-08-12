# Implementation Plan: Goal 0 and Goal 1

This document is the working plan for Goal 0 (compilation database, CodeQL database,
include dependency graph) and Goal 1 (x86 ASM and SIMD optimization opportunities).

## Environment facts (discovered)

- Source tree: `memcached/` at version 1.6.45 (git `2d51e36`).
- Toolchain present: `bear` 3.1.6, `gcc` 15.2.0, `clang`, `make`, autotools, CodeQL CLI 2.26.1
  (extracted at `~/codeql`).
- `libevent` dev headers were missing and there is no passwordless sudo. Resolved by
  downloading the `.deb` packages with `apt-get download` (no root needed) and extracting
  them into a local prefix at `memcached-docs/.deps/libevent`, with `include/` and `lib/`
  symlinks so `configure --with-libevent=<prefix>` works.
- Proxy subsystem needs vendored Lua + routelib + mcmc. Fetched with `vendor/fetch.sh`.
- Build enables: extstore, tls, proxy, sasl-off (sasl needs no extra work). This maximizes
  the number of C files compiled so the compile DB / CodeQL DB cover almost everything.

## Goal 0

- **0a Configure + build compile DB.** `./configure --with-libevent=<prefix> --enable-extstore
  --enable-tls --enable-proxy`, then `bear -- make` to produce `compile_commands.json`.
- **0b Macro-expanded code.** For each translation unit in the compile DB, replay its exact
  compile flags with `gcc -E` to produce a fully macro-expanded `.i` file. Store under
  `docs/analysis/expanded/`. Also emit a second compile database pointing at the expanded
  files (satisfies "compilation graph built on fully macro-expanded code").
- **0c CodeQL database.** `codeql database create --language=cpp --command="make ..."`.
- **0d Include dependency graph.** Parse `#include` directives from every source/header, and
  cross-check with `gcc -M` transitive includes. Produce `docs/dependency-graph.md` with a
  mermaid diagram plus tables. This drives later documentation work.

## Goal 1

- **1a Assembly generation.** Compile each TU with `-O2 -march=native -S` (and `-O3
  -ftree-vectorize -fopt-info-vec`) to get optimized asm + vectorizer reports.
- **1b Opportunity analysis.** Inspect hot paths: hashing (jenkins/murmur3/xxhash), crc32c,
  base64 encode/decode, key comparison (assoc/items), itoa_ljust, protocol parsing, memcpy
  patterns. Note existing SIMD (crc32c uses SSE4.2) and where AVX2/SSE could help.
- **1c Document.** Write `docs/optimization-opportunities.md` with per-site findings:
  location, current codegen, proposed SIMD/ASM approach, and expected benefit.

## Deliverables

- `memcached/compile_commands.json` (+ expanded variant)
- `docs/analysis/expanded/*.i`
- CodeQL database directory
- `docs/dependency-graph.md`
- `docs/optimization-opportunities.md`
- `docs/analysis/asm/*.s`
- A HandOff document at the end.
