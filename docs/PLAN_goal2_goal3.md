# Implementation Plan: Goal 2 and Goal 3

Goal 0 and Goal 1 are complete (see `HANDOFF_goal0_goal1.md`). This plan covers the
remaining work in `AGENTS.md`.

## Goal 2: General / architecture documents

Deliverables (in `docs/`):
- `architecture.md` — the technical architecture: process/thread model, the
  connection state machine, the request lifecycle (text, binary, proxy), the
  storage stack (hash table, LRU, slabs, extstore), and the background threads.
  Includes mermaid diagrams.
- `submodules-overview.md` — every subsystem, the C files that make it up, what
  each file is responsible for, and a mermaid diagram per subsystem plus a
  whole-program subsystem map. Driven by `analysis/include_graph.json` and the
  SUBSYS taxonomy in `scripts/gen_dependency_doc.py`.

## Goal 3: Per-C-file documentation (L1-L4)

For each C file, an `docs/files/<name>.md` with:
- **L1** Purpose and services the file provides.
- **L2** Data structures: purpose and which subsystems/files use them.
- **L3** Each function: what it does, callers and why, return value.
- **L4** Each function body: what it does, block by block (not line by line).

There are 58 C files totalling ~40k lines. To keep each unit of work reviewable
and the context bounded, Goal 3 is split into phases by subsystem, smallest and
most foundational first (so later phases can reference earlier ones):

- **Phase 3.1 Foundations:** hashing/checksums + utilities + platform priv.
  `hash.c, jenkins_hash.c, murmur3_hash.c, crc32c.c, util.c, cache.c,
  itoa_ljust.c, base64.c, bipbuffer.c, globals.c, daemon.c, sizes.c,
  {linux,solaris,openbsd,freebsd,darwin}_priv.c`
- **Phase 3.2 Storage core:** `slabs.c, items.c, assoc.c, slab_automove.c,
  slabs_mover.c, crawler.c, stats_prefix.c`
- **Phase 3.3 External storage:** `extstore.c, storage.c, bipbuffer.c(if not in 3.1),
  restart.c, slab_automove_extstore.c`
- **Phase 3.4 Networking + server core:** `memcached.c, thread.c, logger.c`
- **Phase 3.5 Protocol:** `proto_text.c, proto_bin.c, proto_parser.c`
- **Phase 3.6 Crypto/auth/TLS:** `tls.c, md5.c, sasl_defs.c, authfile.c`
- **Phase 3.7 Proxy:** all `proxy_*.c` + `proto_proxy.c` + vendored `mcmc.c`
- **Phase 3.8 Test harness:** `testapp.c, timedrun.c` (lighter treatment)

After each phase: update this plan's checklist, write/refresh the HandOff, and
decide whether to continue or start a fresh conversation.

### Scope decision (2026-08-05)
The user chose a **critical-path** scope for the remaining Goal 3 work rather than
exhaustive coverage of all 57 files. Plan: document the core request-path files at
full L1-L4 - `memcached.c`, `thread.c`, `items.c`, `proto_text.c`,
`proto_parser.c`, `storage.c` - and rely on the per-file L1/L2 summaries already in
`submodules-overview.md` for the remaining files. Files already documented in
Phases 3.1/3.2 stay. The proxy subsystem and the other leaf files are considered
out of scope unless revisited later.

### Depth policy
L4 documents code *blocks*, not lines. For very large files (`memcached.c`,
`proto_*.c`, `proxy_lua*.c`) L4 groups related helper functions and focuses on the
non-obvious blocks (locking, state transitions, buffer management) rather than
exhaustively narrating trivial getters. This matches the "right granularity"
guidance in AGENTS.md.

## Status checklist
- [x] Goal 2: architecture.md
- [x] Goal 2: submodules-overview.md
- [x] Phase 3.1 Foundations (hash, jenkins, murmur3, crc32c, util, cache,
      itoa_ljust, base64, bipbuffer, globals, daemon, sizes, linux_priv,
      platform_priv_other, timedrun) -> docs/files/*.md
- [x] Critical-path files (per 2026-08-05 scope decision): memcached.c, thread.c,
      items.c, proto_text.c, proto_parser.c, storage.c -> docs/files/*.md
- [x] Phase 3.2 partial: assoc.c, slabs.c, slab_automove.c, stats_prefix.c
- [ ] Phase 3.2 remainder (out of critical-path scope)
- [ ] Phase 3.3 External storage
- [ ] Phase 3.4 Networking + server core
- [ ] Phase 3.5 Protocol
- [ ] Phase 3.6 Crypto/auth/TLS
- [ ] Phase 3.7 Proxy
- [ ] Phase 3.8 Test harness
