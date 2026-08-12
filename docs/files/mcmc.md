# vendor/mcmc/mcmc.c

Subsystem: Proxy (vendored client library). See `../submodules-overview.md`,
`../optimization-opportunities.md` (finding #2 was implemented in this file).

## L1: Purpose and services

`mcmc.c` is a small, self-contained **memcached client library** vendored into the
tree. The proxy uses it to speak the memcached protocol to its *backend* servers:
connecting, sending commands, and parsing responses. It is deliberately independent
of the server code so it can also be built as a standalone client. Core services:
- connection management - `mcmc_connect`, `mcmc_fd`, `mcmc_disconnect`,
  `mcmc_size` (how much memory to allocate for a client handle).
- response reading/parsing - `mcmc_read`, `mcmc_parse_buf`.
- command tokenization - `mcmc_tokenize` and the `mcmc_token_*` accessors, the
  meta-protocol tokenizer shared with request handling.

This is also the file carrying the AVX2 SIMD delimiter-scan optimization described
in `../optimization-opportunities.md` (opportunity #2): `_mcmc_tokenize_meta` uses
a length-gated SIMD scan (`mcmc_scan_space`) to skip long tokens quickly.

## L2: Data structures

- **`mcmc_ctx_t`**: the client handle - socket fd, buffer state
  (`buffer_head`/`buffer_used`), status flags, and error/gai status. Callers
  allocate `mcmc_size()` bytes for it.
- **`mcmc_resp_t`**: a parsed response - type (meta/value/stat/...), status code,
  value length, response line pointer/length, and flags.
- **`mcmc_tokenizer_t`**: the token index over a command/response line - `ntokens`,
  `mstart` (where meta flags begin), a `tokens[]` offset array, and `metaflags`.

## L3: Functions (public API)

- `size_t mcmc_size(int options)` - required handle size.
- `int mcmc_connect(void *c, char *host, char *port, int options)` - open a
  connection (blocking or non-blocking per options).
- `int mcmc_fd(void *c)` - the underlying socket fd (for event loops).
- `int mcmc_read(void *c, char *buf, size_t bufsize, mcmc_resp_t *r)` - read and
  parse the next response.
- `int mcmc_disconnect(void *c)` - close.
- `int mcmc_tokenize(const char *l, size_t len, mcmc_tokenizer_t *t, int
  meta_offset)` - build the token index (calls `_mcmc_tokenize_meta`).
- `mcmc_token_*` accessors - fetch a token, a flag, or a flag's numeric value.

## L4: Function bodies (architecture + the optimization)

### Non-blocking friendly I/O
`mcmc_connect`/`mcmc_read` are written to cooperate with an event loop: a client
handle exposes its fd (`mcmc_fd`) so the proxy's backend event thread
(`proxy_network.c`) can wait for readability and call `mcmc_read` when data is
available, rather than blocking. `mcmc_read` buffers partial responses in the
handle and returns a "want more" style status until a full response is parsed into
`mcmc_resp_t`.

### The meta tokenizer and its SIMD scan (`_mcmc_tokenize_meta`)
Tokenizing splits a command/response line on spaces into a compact offset index
(`tokens[]`), and for meta commands records which flag letters are present in
`metaflags`. The scan for the next space is the hot inner loop. Per
`../optimization-opportunities.md` finding #2, this file now splits the loop on
line length: short lines (the common case) run the original tight per-byte loop,
while long lines use `mcmc_scan_space`, a runtime-dispatched AVX2/SSE2 delimiter
search that jumps over long token bodies 16/32 bytes at a time. The token
bookkeeping (metaflags, `MCMC_NOK` validation) is unchanged, so behavior is
identical - only the scan is faster on long keys.

### Token accessors
The `mcmc_token_*` helpers return slices of the original line by offset rather than
copying, and the flag helpers parse a meta flag's argument into an integer on
demand. This zero-copy indexing is why tokenizing is cheap enough to run on every
backend response.
