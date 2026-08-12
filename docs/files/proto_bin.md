# proto_bin.c

Subsystem: Protocol handling. See `proto_text.md`, `proto_parser.md`, and
`../submodules-overview.md`.

## L1: Purpose and services

`proto_bin.c` implements the **binary protocol** (the older, length-prefixed
memcached wire format). **It is deprecated as of 1.6.0** - new work uses the text
and meta protocols (`proto_text.c`) - but it is still supported for existing
clients, and it is where SASL binary authentication lives. It parses binary
command packets off a connection, dispatches them to the storage engine, and
writes binary responses. The connection layer (`memcached.c`) calls into it via
`try_read_command_binary` and `complete_nread_binary`.

## L2: Data structures

- **`conn`** (from `memcached.h`): the connection; binary state lives in its
  `binary_header`, `cmd`, `substate`, and buffers.
- **`protocol_binary_request/response_*`** (from `protocol_binary.h`): the packed
  wire structs - a fixed 24-byte header (magic, opcode, key length, extras length,
  status, body length, opaque, CAS) followed by extras/key/value.
- **SASL state** (`c->sasl_conn`): per-connection Cyrus SASL context for binary
  auth.

## L3: Functions

Framing: `try_read_command_binary` (parse a header + body), `complete_nread_binary`
(value fully read), `add_bin_header` / `write_bin_response` / `write_bin_error` /
`write_bin_miss_response` (emit responses), `handle_binary_protocol_error`.

Commands: `complete_incr_bin` (incr/decr), `complete_update_bin` (set/add/replace/
append/prepend), `process_bin_get_or_touch` (get/gat), `process_bin_stat`
(stats), `binary_get_key` helper.

SASL: `init_sasl_conn`, `bin_list_sasl_mechs`, `process_bin_sasl_auth`,
`process_bin_complete_sasl_auth`.

## L4: Function bodies (architecture)

### Header-driven state machine
Unlike the text protocol (line-delimited), the binary protocol is length-prefixed:
`try_read_command_binary` reads the fixed 24-byte header, validates the magic and
lengths, and sets the connection substate for how many extras/key/value bytes to
read next. When the body finishes, `complete_nread_binary` runs the actual command.
Every command handler mirrors a text-protocol operation but reads its arguments
from fixed offsets in the packet rather than tokenizing a line, and writes a packed
response via `add_bin_header`/`write_bin_response`. Because the framing is explicit,
there is no tokenizer here - the "parsing" is just struct field access.

### Command handlers reuse the engine
`complete_update_bin`, `complete_incr_bin`, and `process_bin_get_or_touch` all call
the same core storage functions (`store_item`, `add_delta`, `item_get`/touch) that
the text path uses; they differ only in decoding the request and encoding the
reply. This keeps semantics identical across protocols. `process_bin_stat` streams
stats as a series of key/value response packets terminated by an empty one.

### SASL authentication
The binary protocol is the historical home of SASL auth. `bin_list_sasl_mechs`
reports available mechanisms, and `process_bin_sasl_auth` /
`process_bin_complete_sasl_auth` drive the (possibly multi-step) Cyrus SASL
exchange via `c->sasl_conn`, gating further commands until authentication succeeds
when auth is required. This ties into `sasl_defs.c` for the server-side callbacks.

### Deprecation note
Because the protocol is deprecated, this file is in maintenance mode: it is kept
correct and secure (especially the SASL path) but new protocol features land in the
meta protocol instead. A new contributor should read `proto_text.md`/
`proto_parser.md` first and treat this file as legacy compatibility code.
