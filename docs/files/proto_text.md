# proto_text.c

Subsystem: Protocol handling. The ASCII/meta front end. Sits on top of
`proto_parser.md` (parsing + command execution) and drives the connection state
machine in `memcached.c`. Critical-path file.

## L1: Purpose and services

`proto_text.c` is the connection-facing half of the text protocol. Where
`proto_parser.c` is pure parsing and storage logic, this file deals with the
`conn` object: reading a command line out of the connection's buffer, completing
the read of a value body, dispatching the parsed command to the right handler,
formatting responses onto the connection, and implementing the many
administrative/introspection commands (`stats`, `watch`, `lru`, `slabs`,
`flush_all`, `verbosity`, `version`, `quit`, and so on).

Services (called from `drive_machine` in `memcached.c`):
- `try_read_command_ascii` - pull one complete command line from the read buffer.
- `try_read_command_asciiauth` - the same during the SASL/auth handshake.
- `process_command_ascii` - dispatch a parsed command to its handler.
- `complete_nread_ascii` - finish storing a value once its body has been read.
- A large set of `process_*_command` handlers for administrative commands.

## L2: Data structures

- **`conn *c`**: the connection. This file reads from `c->rbuf`/`c->rcurr`/`c->rbytes`
  (the input buffer and cursor), writes via `c->resp` (the response object),
  advances `c->item`/`c->ritem` during a body read, and moves the connection between
  states with `conn_set_state`.
- **`mcp_parser_t pr`**: a stack-allocated parser filled by `process_request` for
  each command, then handed to the executing handler.
- **`text_cmd_entry text_cmd_entries[]`**: a table mapping the less-common command
  words to their handler functions, used as a fallback when the fast switch in
  `process_command_ascii` does not match.
- Output helpers: `out_string` (write a short status line) and the response's iov
  list (built by the parser's handlers).

## L3: Functions

### Reading commands
- `int try_read_command_ascii(conn *c)` - find a newline in the buffered input and,
  if a full line is present, run it. Returns 1 if a command was processed, 0 if more
  data is needed. Detailed in L4.
- `int try_read_command_asciiauth(conn *c)` - the restricted reader used before
  authentication completes (only the auth command is accepted).

### Dispatch and completion
- `void process_command_ascii(conn *c, char *command, size_t cmdlen)` - parse the
  line via `process_request`, then a `switch (pr.command)` calls the matching
  handler and sets the next connection state. Detailed in L4.
- `void complete_nread_ascii(conn *c)` - called by the state machine once a value
  body has finished reading; validates the trailing `\r\n` and calls `store_item`.

### Administrative command handlers
`process_stat`, `process_watch_command`, `process_lru_command`,
`process_lru_crawler_command`, `process_slabs_command`,
`process_slabs_automove_command`, `process_flush_all_command`,
`process_memlimit_command`, `process_extstore_command`,
`process_verbosity_command`, `process_version_command`, `process_quit_command`,
`process_shutdown_command`, `process_refresh_certs_command`, plus debug helpers
(`process_debugtime_command`, `process_debugitem_command`,
`process_misbehave_command`). Each parses its own arguments and writes a response.
`process_get_command`, `process_update_command`, `process_mset_command`, and
`process_meta_command` are thin adapters that connect the connection to the
parser's execution functions.

## L4: Notable bodies

### `try_read_command_ascii`
1. If the buffer is empty, return 0. Search for `\n` with `memchr`.
2. **No newline yet.** Normally return 0 to wait for more bytes. But if more than
   ~2 KB has arrived with no newline, it must be a huge multiget (the only unbounded
   ASCII command): it sanity-checks that the line really begins with `get`/`gets`
   (else it closes the connection as garbage), and switches the fixed read buffer to
   a malloc/realloc buffer so an arbitrarily long multiget line can be assembled.
3. **Newline found.** Record the command time, call `process_command_ascii` on the
   line, then advance `rcurr`/`rbytes` past the consumed line. Return 1.

This function is the boundary between raw socket bytes and a parseable command line;
the multiget special case is the one place the otherwise fixed-size buffering model
bends.

### `process_command_ascii` (dispatch + state transitions)
Start a fresh response object (`resp_start`; close the connection if that fails),
then `process_request` to parse. On success a `switch (pr.command)` routes to the
handler and, crucially, sets the *next connection state*:
- Read-only commands (get, delete, incr, touch, meta get/delete/arith) run
  immediately and set `conn_new_cmd` to go read the next command - unless the get
  triggered an extstore read, in which case the connection is suspended
  (`conn_resp_suspend`) until the async IO completes.
- Store commands (set/add/replace/append/prepend/cas, mset) call
  `process_update_command`, which sets `conn_nread` so the state machine reads the
  value body next; storage is finished later in `complete_nread_ascii`.
Unknown commands fall back to the `text_cmd_entries` table lookup. Splitting "parse
now, read body later, store later" across states is what lets one worker interleave
many connections without blocking on any single body read.

### `complete_nread_ascii` (finish a store)
When the body has been read (possibly across multiple slab chunks for a large
value), this validates that the last two bytes are the required `\r\n` terminator -
carefully handling the case where the terminator spans two chunks - and then calls
`store_item` with the command semantics and CAS. An invalid terminator yields
`CLIENT_ERROR bad data chunk`. The store result (stored / not stored / exists /
not found) is turned into the appropriate ASCII reply, and the connection returns to
`conn_new_cmd`.
