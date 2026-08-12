# proxy_result.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_result.c` implements the Lua `mcp.response` object: the wrapper around a
backend server's reply that proxy route handlers inspect and manipulate. When a
proxy sends a request to a backend and gets a response, that response is exposed
to Lua as this object. This file provides the accessor methods (status, hit,
value length, response code, raw line/string, elapsed time), a meta-flag blanking
helper, and the cleanup/GC path that frees the response buffers. Method entry
points are named `mcplib_response_*`; `mcp_response_cleanup` is the shared teardown.

## L2: Data structures

- **`mcp_resp_t`** (defined in `proxy.h`): the response object. Key fields used
  here: `status` (an `MCMC_*` code), `resp` (a parsed `mcmc_resp_t`: `code`,
  `vlen`, `rline`/`rlen`, etc.), `buf`/`blen` (the raw reply bytes), `cresp` (an
  optional internal `mc_resp` sub-object when the value came from the local cache
  rather than a backend), `elapsed` (latency), `tok`, and `thread`.
- **`res_buf(r)` macro**: picks the value buffer source - `cresp->iov[0]` if this
  is an internal response, else `r->buf`.

## L3: Functions

Accessors (each takes the response userdata, pushes one Lua value):
- `mcplib_response_elapsed` - request latency.
- `mcplib_response_raw_string` - the raw reply bytes as a Lua string (or nil).
- `mcplib_response_ok` - boolean: `status == MCMC_OK`.
- `mcplib_response_hit` - boolean: OK and not an END (i.e. a value came back).
- `mcplib_response_vlen` - value length with the trailing `\r\n` removed (always
  an integer so callers can distinguish "0-length value" from "error").
- `mcplib_response_code` - the `MCMC_CODE_*` response code.
- `mcplib_response_line` - the unparsed response line (or nil).
- `mcplib_response_flag_blank` - overwrite a meta flag in the response line with
  spaces; returns whether it was found.

Lifecycle:
- `void mcp_response_cleanup(LIBEVENT_THREAD *t, mcp_resp_t *r)` - free buffers and
  sub-objects; safe to call repeatedly.
- `mcplib_response_gc` - Lua garbage-collection hook (calls cleanup once).
- `mcplib_response_close` - explicit `resp:close()`; may be called multiple times.

## L4: Function bodies

### `mcplib_response_flag_blank`
Re-parses the raw buffer with `mcmc_parse_buf`, and for a meta response walks the
response line looking for the requested single-character flag at a token boundary
(line start or preceded by a space). When found, it overwrites the flag and its
value with spaces in place (the comment calls this "evil" because it casts away
`const` and mutates the parsed buffer) and returns true. This lets Lua strip a
flag (e.g. an opaque token) from a response before forwarding it.

### `mcp_response_cleanup` (the important one)
This is the teardown all GC/close paths funnel through, and it is written to be
idempotent. If `r->buf` is set, it decrements the thread's
`proxy_buffer_memory_used` accounting, frees the buffer, and NULLs `buf`/`blen`
and the parsed `resp` so a reused-after-close object can't feed stale data back
into the system. If `r->cresp` (an internal `mc_resp`) exists, it removes any
held item (`item_remove`) and returns the sub-object with `resp_free`. Because
every field it checks is NULLed after freeing, calling it twice (GC after an
explicit close) is harmless - which is exactly why `close` and `gc` can both call
it.
