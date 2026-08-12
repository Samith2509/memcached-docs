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
- [tls.md](tls.md)

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
- [restart.md](restart.md)
- [extstore.md](extstore.md)

### Platform privilege drop (complete)
- [linux_priv.md](linux_priv.md)
- [platform_priv_other.md](platform_priv_other.md) (solaris/openbsd/freebsd/darwin)

### Storage engine (critical path done)
- [items.md](items.md)
- [assoc.md](assoc.md)
- [slabs.md](slabs.md)
- [slab_automove.md](slab_automove.md)
- [slab_automove_extstore.md](slab_automove_extstore.md)
- [crawler.md](crawler.md)
- [slabs_mover.md](slabs_mover.md)

### Logging / stats (complete)
- [stats_prefix.md](stats_prefix.md)
- [logger.md](logger.md)

### Protocol handling (complete)
- [proto_parser.md](proto_parser.md)
- [proto_text.md](proto_text.md)
- [proto_bin.md](proto_bin.md)
- [proto_proxy.md](proto_proxy.md)

### Proxy (in progress)
Key distribution / hashing:
- [proxy_xxhash.md](proxy_xxhash.md)
- [proxy_jump_hash.md](proxy_jump_hash.md)
- [proxy_ring_hash.md](proxy_ring_hash.md)

Lua-exposed helpers:
- [proxy_ustats.md](proxy_ustats.md)
- [proxy_ratelim.md](proxy_ratelim.md)
- [proxy_result.md](proxy_result.md)

Execution / backends:
- [proxy_internal.md](proxy_internal.md)
- [proxy_tls.md](proxy_tls.md)

Config / request / inspection:
- [proxy_config.md](proxy_config.md)
- [proxy_request.md](proxy_request.md)
- [proxy_inspector.md](proxy_inspector.md)
- [proxy_mutator.md](proxy_mutator.md)

Backend network (integration in [proto_proxy.md](proto_proxy.md)):
- [proxy_network.md](proxy_network.md)

- _pending: proxy_lua.c, proxy_luafgen.c, vendored mcmc.c
  (summarized in ../submodules-overview.md)_
