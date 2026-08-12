# Per-file documentation (Goal 3)

Each file here documents one memcached C source file at four levels:
- **L1** Purpose and services provided.
- **L2** Data structures and who uses them.
- **L3** Each function: what it does, callers, return value.
- **L4** Each function body, block by block.

Start with `../architecture.md` and `../submodules-overview.md` for the big
picture, then drill into a file below.

## Status by subsystem

### Hashing / checksums (complete)
- [hash.md](hash.md)
- [jenkins_hash.md](jenkins_hash.md)
- [murmur3_hash.md](murmur3_hash.md)
- [crc32c.md](crc32c.md)

### Utilities (complete)
- [util.md](util.md)
- [cache.md](cache.md)
- [itoa_ljust.md](itoa_ljust.md)

### Crypto / auth / TLS (partial - base64 done)
- [base64.md](base64.md)
- [md5.md](md5.md)
- [sasl_defs.md](sasl_defs.md)
- [authfile.md](authfile.md)
- _pending: tls.c (summarized in ../submodules-overview.md)_

### Core server / event loop (critical path done)
- [memcached.md](memcached.md)
- [thread.md](thread.md)
- [globals.md](globals.md)
- [daemon.md](daemon.md)
- [sizes.md](sizes.md)
- [timedrun.md](timedrun.md)

### External storage (partial - storage + bipbuffer done)
- [storage.md](storage.md)
- [bipbuffer.md](bipbuffer.md)
- _pending: extstore.c, restart.c (summarized in ../submodules-overview.md)_

### Platform privilege drop (complete)
- [linux_priv.md](linux_priv.md)
- [platform_priv_other.md](platform_priv_other.md) (solaris/openbsd/freebsd/darwin)

### Storage engine (critical path done)
- [items.md](items.md)
- [assoc.md](assoc.md)
- [slabs.md](slabs.md)
- [slab_automove.md](slab_automove.md)
- _pending: crawler.c, slabs_mover.c, slab_automove_extstore.c (summarized in ../submodules-overview.md)_

### Logging / stats (partial)
- [stats_prefix.md](stats_prefix.md)
- _pending: logger.c (summarized in ../submodules-overview.md)_

### Protocol handling (critical path done)
- [proto_parser.md](proto_parser.md)
- [proto_text.md](proto_text.md)
- _pending: proto_bin.c (summarized in ../submodules-overview.md)_

### Proxy (in progress)
Key distribution / hashing:
- [proxy_xxhash.md](proxy_xxhash.md)
- [proxy_jump_hash.md](proxy_jump_hash.md)
- [proxy_ring_hash.md](proxy_ring_hash.md)

Lua-exposed helpers:
- [proxy_ustats.md](proxy_ustats.md)
- [proxy_ratelim.md](proxy_ratelim.md)
- [proxy_result.md](proxy_result.md)

- _pending: proto_proxy.c, proxy_config.c, proxy_internal.c, proxy_inspector.c,
  proxy_request.c, proxy_network.c, proxy_mutator.c, proxy_tls.c, proxy_lua.c,
  proxy_luafgen.c, vendored mcmc.c (summarized in ../submodules-overview.md)_
