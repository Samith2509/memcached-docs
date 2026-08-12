# HandOff: Goal 0 and Goal 1

Date: 2026-08-05. Covers the completion of Goal 0 (compilation database, CodeQL
database, include dependency graph) and Goal 1 (x86 ASM/SIMD opportunities).

## What was done

### Environment setup (prerequisite, was blocking)
- memcached 1.6.45 (`memcached/`, git `2d51e36`) needs `libevent` dev headers,
  which were missing, and there is **no passwordless sudo**. Resolved without root
  by `apt-get download`ing the libevent `.deb`s and extracting them into a local
  prefix at `memcached-docs/.deps/libevent`, with `include/` and `lib/` symlinks.
- The proxy subsystem's vendored deps (Lua, routelib, mcmc) were fetched with
  `vendor/fetch.sh` (network, one-time). `vendor/lua/src` and `vendor/routelib`
  are now populated.

### Goal 0
- **0a compile DB.** Configured with
  `./configure --with-libevent=<prefix> --enable-extstore --enable-tls
  --enable-proxy`, then `bear -- make -j4`. Produced
  `memcached/compile_commands.json` (137 entries: release + debug builds + Lua).
  All binaries link and `./memcached --version` runs.
- **0b macro-expanded code.** `scripts/gen_expanded.py` replays each project TU's
  exact flags with `gcc -E -P` into `docs/analysis/expanded/*.i` (50 files) and
  emits `docs/analysis/expanded_compile_commands.json`.
- **0c CodeQL DB.** Built at `.codeql/memcached-codeql-db` (~38k LOC, 35 MB) with
  `codeql database create --language=cpp --command="make -j4"`. Verified
  queryable (lists all project `.c` files; a `Function` query compiles and runs).
  Needs `CODEQL_ALLOW_INSTALLATION_ANYWHERE=true` because the CLI lives in `~`.
- **0d dependency graph.** `scripts/analyze_includes.py` parses every `#include`
  into `docs/analysis/include_graph.json` (97 nodes, 151 internal edges);
  `scripts/gen_dependency_doc.py` renders `docs/dependency-graph.md` with mermaid
  diagrams (header spine, header-to-header, subsystem membership) and full
  fan-in/fan-out and external-dependency tables. `memcached.h` (fan-in 29) is the
  central hub; `proxy.h` (16) and `storage.h` (11) are subsystem hubs.

### Goal 1
- `scripts/gen_asm.py` compiles the compute-heavy TUs at `-O3 -march=native
  -ftree-vectorize` with `-fopt-info-vec-all`; outputs in `docs/analysis/asm/`
  (13 `.s` + `.vec.txt`).
- `docs/optimization-opportunities.md` documents 7 findings. The headline,
  **verified** finding: the stock `-O2` build leaves the default hash (XXH3 in
  `hash.c`) on the SSE2 path (0 `%ymm` instructions); `-mavx2 -mbmi2` unlocks 67
  AVX2 instructions. Other findings: SIMD-scan the text tokenizer
  (`vendor/mcmc/mcmc.c`), vectorize base64 (`base64.c`), optional PCLMULQDQ CRC,
  and a build-baseline / runtime-dispatch recommendation.

## Reusable scripts (all in `scripts/`)
`gen_expanded.py`, `analyze_includes.py`, `gen_dependency_doc.py`, `gen_asm.py`.
The include model JSON is the machine-readable driver for later docs.

## Rebuild cheatsheet
```
PREFIX=/home/samith_g/memcached-docs/.deps/libevent
export LD_LIBRARY_PATH=$PREFIX/lib
cd memcached && ./configure --with-libevent=$PREFIX --enable-extstore --enable-tls --enable-proxy
bear -- make -j4                     # compile_commands.json
export CODEQL_ALLOW_INSTALLATION_ANYWHERE=true
make clean && ~/codeql/codeql database create ../.codeql/memcached-codeql-db --language=cpp --command="make -j4" --overwrite
cd .. && python3 scripts/gen_expanded.py && python3 scripts/analyze_includes.py && python3 scripts/gen_dependency_doc.py && python3 scripts/gen_asm.py
```

## Next phase (Goal 2)
Use `docs/dependency-graph.md` + `docs/analysis/include_graph.json` and the
CodeQL DB to write the technical-architecture and submodules-overview documents
with subsystem mermaid diagrams. The subsystem classification in
`scripts/gen_dependency_doc.py` (SUBSYS dict) is a ready starting taxonomy.
