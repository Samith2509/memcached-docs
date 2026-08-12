# proto_parser.c

Subsystem: Protocol handling. Paired with `proto_text.md` (which wraps these for
the ASCII connection path) and reused by the proxy. Critical-path file.

## L1: Purpose and services

`proto_parser.c` is the protocol-agnostic command parser and command-execution
core for the text/meta protocol. It takes a raw command line, identifies the
command, splits it into tokens "in place" (without copying, so a request can be
forwarded unmodified by the proxy), validates the pieces, and then carries out the
operation by calling the storage engine and formatting a response.

It is deliberately separated from `proto_text.c` (connection/buffer plumbing) and
from the proxy so that both can share the same parsing and the same command
handlers. Its two halves are:
- **Parsing**: `process_request` plus the per-command-shape `_process_request_*`
  helpers and token accessors (`mc_prcmp`, `mc_toktod`, `mc_parse_exptime`).
- **Command execution**: `process_get_cmd`, `process_update_cmd`,
  `process_arithmetic_cmd`, `process_delete_cmd`, `process_touch_cmd`, and the meta
  variants (`process_mget_cmd`, `process_mset_cmd`, `process_mdelete_cmd`,
  `process_marithmetic_cmd`).

## L2: Data structures

- **`mcp_parser_t`** (in `proto_parser.h`): the parsed request. Holds a pointer to
  the original `request` buffer and `reqlen`, the token offsets, the command id and
  type, the key location/length, and (for meta) the parsed flag set. Because it
  stores offsets into the original buffer rather than copies, "parsing" is nearly
  free and the original bytes can be forwarded verbatim.
- **`mc_resp`**: the response object being filled. Handlers append output through
  `resp_add_iov` / `resp_add_chunked_iov` (scatter-gather so values are not copied)
  and small helpers `pout_string` / `pout_errstring` for status lines.
- **Command ids/types** (`CMD_*`, `CMD_TYPE_*`): the enum of recognized commands and
  broad categories (GET, META, storage, generic).

## L3: Functions

### Parsing
- `int process_request(mcp_parser_t *pr, const char *command, size_t cmdlen)` - the
  entry point: identify the command and tokenize it. Returns 0 on success, negative
  on a malformed request. Detailed in L4.
- `static int _process_request_meta/_mset/_gat/_storage/_simple(...)` - per-shape
  tokenizers. Each knows how many fixed tokens its command family has (e.g. storage
  commands have key/flags/exptime/bytes) and validates them, using `mcmc_tokenize`
  from the vendored client for the meta commands.
- `static int _meta_flag_preparse(...)` - scan a meta command's flag tokens
  (`T`, `F`, `v`, `c`, etc.) into the parser's flag set before execution.
- `int mc_prcmp(mcp_parser_t *pr, int token, const char *s)` - compare a token to a
  literal string. `bool mc_toktod(...)` parses a token as a double;
  `bool mc_parse_exptime(...)` parses and normalizes an expiration token.

### Command execution
- `int process_get_cmd(t, key, nkey, resp, storage_cb, exptime, return_cas, should_touch)` -
  execute a single-key get/gets/gat/gats: fetch the item, format the `VALUE ...`
  line, and append the value (inline, chunked, or via extstore). Returns 0, or -1 on
  error. Detailed in L4.
- `item *process_update_cmd_start(...)` / `void process_update_cmd(...)` - begin and
  complete a set/add/replace/append/prepend/cas: parse flags/exptime/bytes, allocate
  the item, and (after the body is read) store it with the right semantics.
- `void process_arithmetic_cmd(...)` - incr/decr on a numeric value.
- `void process_delete_cmd(...)` / `process_touch_cmd(...)` - delete and touch.
- The meta handlers `process_mget_cmd`, `process_mset_cmd_start`/`process_mset_cmd`,
  `process_mdelete_cmd`, `process_marithmetic_cmd` - the richer meta-protocol
  equivalents that also emit requested metadata flags.

## L4: Notable bodies

### `process_request` (command identification + in-place tokenize)
1. Reject anything shorter than the minimum. Find the end of the line, tolerating a
   bare `\n` as well as `\r\n` (a backcompat concession noted in the source).
2. Find the first space with `memchr` to get the command word length `cl`.
3. **Dispatch by command length then bytes.** A `switch (cl)` narrows to 2/3/4/5...
   character commands, and within each a small comparison tree identifies the exact
   command (`mg`/`ms`/`md`/`ma`/`me`/`mn` for meta at length 2; `get`/`set`/`add`/
   `cas`/`gat` at length 3; and so on). Each match sets the command id and type and
   calls the matching `_process_request_*` to tokenize the rest. Using length as the
   first discriminator makes command recognition branch-cheap and avoids a big
   string compare.
4. Return the tokenizer's result; a `-1`/unknown command produces an error upstream.

The "parse in place" design is the key idea: tokens are recorded as offsets into the
caller's buffer, so nothing is copied and the proxy can forward the exact bytes.

### `process_get_cmd` (single-key get)
Reject over-long keys. Fetch via `limited_get` (which takes the item lock and bumps
LRU). On a hit: write the `VALUE <key>` header plus the ASCII flags/length suffix
into the response work buffer and add it as one iov; then append the value - inline
data as a single iov, chunked items via `resp_add_chunked_iov`, and extstore-backed
items (`ITEM_HDR`) through the `storage_cb`, which schedules an async disk read. The
item's refcount (taken by the get) is transferred to `resp->item` so it is held
until the response is written, except for the extstore case where the IO wrapper
owns it. Update per-thread hit/miss stats. On a miss, only stats are updated. Values
are never copied into the response - they are referenced by iov - which is central
to memcached's throughput.

### The update path (`process_update_cmd_start` / `process_update_cmd`)
Storing is two-phase because the value body arrives after the command line.
`_start` parses flags/exptime/bytes, checks the size, and `item_alloc`s an unlinked
item to receive the upload; the connection then reads the body into that item; and
`process_update_cmd` finishes by calling `store_item` with the command's semantics
(set always, add only if absent, replace only if present, cas only if the version
matches, append/prepend concatenate). This split is why the connection state machine
has a separate `conn_nread` state for reading a fixed-size body.
