# HandOff: Goal 2 and Goal 3 (in progress)

Date: 2026-08-05. Goal 0 and Goal 1 were finished earlier
(`HANDOFF_goal0_goal1.md`). This handoff covers Goal 2 (done) and the start of
Goal 3.

## What was done

### Goal 2 (complete)
- `docs/architecture.md` - process/thread model, connection state machine, request
  lifecycle, storage stack, background threads, startup order. Includes mermaid
  graph/state/sequence diagrams. Grounded in `memcached.h` (enums, `item`, `conn`)
  and the `main()` init sequence.
- `docs/submodules-overview.md` - every build-included C file grouped into 12
  subsystems, one table + mermaid diagram per subsystem, plus a whole-program map.
  Membership derived from `analysis/include_graph.json`; all 58 C files itemized
  (only `vendor/mcmc/example.c` excluded, correctly, as uncompiled sample code).

### Goal 3 (Phase 3.1 Foundations complete)
Per-file L1-L4 docs under `docs/files/`, indexed by `docs/files/README.md`:
- Hashing/checksums: `hash.md, jenkins_hash.md, murmur3_hash.md, crc32c.md`
- Utilities: `util.md, cache.md, itoa_ljust.md`
- Crypto helper: `base64.md`
- Core (small files): `globals.md, daemon.md, sizes.md, timedrun.md`
- Extstore helper: `bipbuffer.md`
- Platform priv: `linux_priv.md`, `platform_priv_other.md` (the 4 non-Linux OSes
  together, since only one compiles per target).

Doc template established: L1 purpose/services, L2 data structures + who uses them,
L3 per-function (what/callers/return), L4 per-body block-level. Depth policy for
huge files is in `PLAN_goal2_goal3.md`.

## Remaining Goal 3 phases (not yet done)
See the checklist in `PLAN_goal2_goal3.md`:
- 3.2 Storage core: items.c, slabs.c, assoc.c, crawler.c, slabs_mover.c,
  slab_automove.c, slab_automove_extstore.c, stats_prefix.c
- 3.3 External storage: extstore.c, storage.c, restart.c (bipbuffer done)
- 3.4 Networking + server core: memcached.c (6.3k lines), thread.c, logger.c
- 3.5 Protocol: proto_text.c, proto_bin.c, proto_parser.c
- 3.6 Crypto/auth/TLS: tls.c, md5.c, sasl_defs.c, authfile.c (base64 done)
- 3.7 Proxy: proto_proxy.c + all proxy_*.c + vendored mcmc.c
- 3.8 Test harness: testapp.c

## How to continue
Work one phase at a time. For each file: read the source, then write
`docs/files/<name>.md` following the L1-L4 template used in Phase 3.1, and update
`docs/files/README.md` (move the file from "pending" to a link). For the large
files (memcached.c, proto_*.c, proxy_lua*.c) apply the depth policy: group helper
functions and focus L4 on non-obvious blocks (locking, state transitions, buffer
management) rather than narrating trivial code.

Nothing needs rebuilding; the compile DB, CodeQL DB, and analysis artifacts from
Goal 0 are still valid and can be used to cross-check callers.

### Continuation prompt (for a fresh conversation if needed)
> Continue Goal 3 of AGENTS.md for the memcached docs. Goal 2 and Phase 3.1 are
> done (see docs/HANDOFF_goal2_goal3.md and docs/PLAN_goal2_goal3.md). Start Phase
> 3.2 (storage core: slabs.c, items.c, assoc.c, crawler.c, slabs_mover.c,
> slab_automove.c, slab_automove_extstore.c, stats_prefix.c). Write
> docs/files/<name>.md for each using the L1-L4 template already established in the
> Phase 3.1 files, and update docs/files/README.md as you go.
