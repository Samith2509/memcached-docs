# proxy_request.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.
Related: `proto_parser.md` (the tokenizer this reuses).

## L1: Purpose and services

`proxy_request.c` implements the Lua **`mcp.request`** object: the mutable
representation of a command that a proxy route builds or edits before sending it to
a backend. A route can take the incoming request, read/modify its key and meta
flags, or construct a brand-new request, then hand it to the backend send path.
This file provides the C constructors, the render/append machinery that
re-serializes a request into wire bytes, and the Lua accessor methods
(`mcplib_request_*`).

## L2: Data structures

- **`mcp_request_t`** (from `proxy.h`): the request object - the parsed token index
  (`mcp_parser_t`), the command buffer, any rendered/overridden tokens, key
  boundaries, and an attach pointer to the pending backend I/O.
- **`mcp_parser_t`**: the shared token index (offsets into the command), reused so
  the proxy sees the same tokenization as the core protocol (`proto_parser.c`).
- **`io_pending_proxy_t`**: the in-flight backend request the object attaches to
  when sent.

## L3: Functions

Construction / mutation:
- `mcp_request_t *mcp_new_request(...)` / `void mcp_set_request(...)` - create or
  (re)initialize a request from a parsed command.
- `int mcp_request_render(mcp_request_t *rq, int idx, flag, tok, len)` - write a
  token/flag into the request's output buffer at a position.
- `int mcp_request_append(mcp_request_t *rq, flag, tok, len)` - append a new
  flag/token.
- `void mcp_request_attach(mcp_request_t *rq, io_pending_proxy_t *p)` - bind the
  request to a backend I/O op.

Lua accessors (`mcplib_request_*`): `request` (constructor), `key`,
`ltrimkey`/`rtrimkey` (adjust the key window), `raw_line`, `raw_value`, `token` /
`token_int` (read a token), `ntokens`, and the flag helpers.

## L4: Function bodies

### Parse-index model (why render/append exist)
A request is stored as the original command bytes plus a token *index*, not as
parsed strings. Reading a token (`mcplib_request_token`) just returns a slice of
the buffer - cheap and allocation-free. Mutations, however, must produce new wire
bytes: `mcp_request_render` and `mcp_request_append` write into a separate output
buffer so the object can be re-serialized for the backend with edits applied,
without disturbing the original for other routes that might also see it.

### Key windowing (`key`, `ltrimkey`, `rtrimkey`)
The key is represented as a window (start/length) into the command. `ltrimkey`/
`rtrimkey` move the window edges to strip a prefix/suffix (e.g. remove a routing
namespace before forwarding) without copying - the backend send then uses the
adjusted window. This is a common proxy operation (rewrite the key seen by the
backend) made O(1).

### `mcp_request_attach`
When a built request is dispatched, it is attached to an `io_pending_proxy_t` so
the response machinery can correlate the eventual backend reply with this request
and resume the route. This ties the request object into the same async
"submit + resume" flow used across the proxy (`proxy_network.c`, `proxy_luafgen.c`).
