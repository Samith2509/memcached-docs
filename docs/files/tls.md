# tls.c

Subsystem: Crypto / auth / TLS. See `../submodules-overview.md`.
Related: `proxy_tls.md` (backend-side TLS).

## L1: Purpose and services

`tls.c` provides **client-facing TLS**: it secures connections from clients *to*
memcached (the `--enable-ssl` build, `-Z`/`--ssl-*` options). It wraps OpenSSL so
the rest of the server treats a TLS socket almost like a plain one: the connection
code calls `ssl_read`/`ssl_write`/`ssl_sendmsg` instead of the raw syscalls, and
this file hides the handshake, buffering, and error handling. Services:
- `ssl_init` / `ssl_init_settings` - build the server `SSL_CTX`, load certs.
- `ssl_accept` - complete the TLS handshake for a new connection.
- `ssl_read` / `ssl_write` / `ssl_sendmsg` - non-blocking I/O wrappers matching the
  transport interface used by `memcached.c`/`proto_*`.
- `ssl_get_peer_cn` - client certificate common-name (for auth).
- cert reload (`load_server_certificates`), session-cache locking, teardown.

## L2: Data structures

- **Global `SSL_CTX`** (in settings): the shared server context all connections
  derive their per-connection `SSL` from.
- **`conn`** (from `memcached.h`): each connection stores its `SSL *` and TLS
  buffers; the wrappers here operate through `c->ssl`.
- **Session-cache lock**: `SSL_LOCK`/`SSL_UNLOCK` guard OpenSSL's server-side
  session cache when enabled.

## L3: Functions

- `void *ssl_accept(conn *c, int sfd, bool *fail)` - create the per-connection SSL,
  run the handshake, set `*fail` on error; returns the SSL handle.
- `const unsigned char *ssl_get_peer_cn(conn *c, int *len)` - extract the client
  cert CN (used for cert-based auth).
- `static ssize_t ssl_read/ssl_write/ssl_sendmsg(...)` - the transport wrappers.
- `static void print_ssl_error(...)` - format the OpenSSL error stack.
- `static bool load_server_certificates(char **errmsg)` - (re)load cert+key chain.
- `void ssl_conn_close(void *ssl_in)`, `int ssl_pending(void *ssl_in)`,
  `void ssl_init_conn(conn *c, void *ssl_in)` - lifecycle/state helpers.
- `void ssl_init_settings(void)`, `int ssl_init(void)` - startup config + context.

## L4: Function bodies

### Non-blocking I/O wrappers (`ssl_read`/`ssl_write`/`ssl_sendmsg`)
memcached's networking is event-driven, so these wrappers must translate OpenSSL's
`SSL_ERROR_WANT_READ`/`WANT_WRITE` into the same "try again later" signals the
plain-socket path uses, letting the event loop re-arm the socket instead of
blocking. `ssl_sendmsg` emulates scatter/gather `sendmsg` over TLS by writing the
iovec segments through the SSL object (TLS has no native gathered write). Each
clears and inspects the OpenSSL error stack so a retryable state is never confused
with a fatal one - the same discipline documented in `proxy_tls.md`.

### `ssl_accept` and certificate loading
`ssl_accept` makes a per-connection `SSL` from the shared context and drives the
handshake, reporting failure via `*fail` so a bad client is dropped cleanly.
`load_server_certificates` reads the certificate chain and private key into the
context and can be re-run to hot-reload certs without restarting; it validates the
key matches the cert and returns an error message on failure.

### Session cache locking
When server-side session caching is enabled, OpenSSL callbacks may touch the shared
session cache from multiple worker threads, so `SSL_LOCK`/`SSL_UNLOCK` serialize
those accesses. This is the only global lock in the file; the per-connection I/O
paths are otherwise lock-free.
