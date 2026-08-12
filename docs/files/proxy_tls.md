# proxy_tls.c

Subsystem: Proxy (Lua-driven routing) / TLS. See `../submodules-overview.md`.
Related: `tls.c` (client-facing TLS).

## L1: Purpose and services

`proxy_tls.c` provides TLS for the proxy's **backend** connections - the encrypted
link from this proxy to the upstream memcached servers it forwards to. (This is
the opposite direction from `tls.c`, which secures clients talking *to* memcached.)
It wraps OpenSSL for the proxy's non-blocking backend sockets: context setup,
per-connection handshake, and non-blocking read/writev that cooperate with the
event loop. All functions are named `mcp_tls_*` and operate on a
`struct mcp_backendconn_s`.

## L2: Data structures

- **`proxy_ctx_t`**: holds the proxy-wide `SSL_CTX` created here.
- **`struct mcp_backendconn_s`** (from `proxy.h`): one backend connection; carries
  the per-connection `SSL *`, socket fd, and buffers. Every function here takes one.
- OpenSSL types (`SSL`, `SSL_CTX`) - the file is compiled only when TLS is enabled;
  a stub `mcp_tls_writev` exists for the non-TLS build (note the two definitions).

## L3: Functions

- `int mcp_tls_init(proxy_ctx_t *ctx)` - create/configure the proxy's `SSL_CTX`.
- `int mcp_tls_backend_init(proxy_ctx_t *ctx, struct mcp_backendconn_s *be)` -
  attach a new `SSL` object to a backend connection.
- `int mcp_tls_connect(struct mcp_backendconn_s *be)` - begin the TLS connection.
- `int mcp_tls_handshake(struct mcp_backendconn_s *be)` - drive the (possibly
  multi-step, non-blocking) handshake.
- `int mcp_tls_send_validate(struct mcp_backendconn_s *be)` - post-handshake
  validation before traffic flows.
- `int mcp_tls_read(struct mcp_backendconn_s *be)` - non-blocking `SSL_read`.
- `int mcp_tls_writev(struct mcp_backendconn_s *be, int iovcnt)` - gathered write
  over TLS (real version when TLS is built; a stub otherwise).
- `int mcp_tls_shutdown(...)` / `int mcp_tls_cleanup(...)` - tear down the `SSL`
  object and free resources.

## L4: Function bodies

### OpenSSL error-stack discipline (the header note)
The top-of-file comment is the key to understanding every function: OpenSSL leaves
errors on a thread-local error stack, and non-blocking SSL calls return
`SSL_ERROR_WANT_READ`/`WANT_WRITE` which are *not* real errors but must be
distinguished from fatal ones. Each function calls `ERR_clear_error()` before an
SSL operation and inspects `SSL_get_error()` after, so a "would block" result
suspends the operation to be retried on the next event-loop wakeup, while a true
error tears the connection down. Getting this wrong would either leak stale errors
or misclassify a retryable state as failure.

### Non-blocking handshake and I/O
`mcp_tls_connect`/`mcp_tls_handshake` implement the handshake as a state that can
return "want read/write" and be resumed - essential because the proxy's backend
sockets are event-driven, not blocking. `mcp_tls_read` and `mcp_tls_writev`
likewise return partial-progress/again signals so the caller (the proxy network
code, `proxy_network.c`) can re-arm the socket in libevent rather than block a
worker thread. The dual `mcp_tls_writev` definitions let the same call sites
compile whether or not TLS support is enabled.
