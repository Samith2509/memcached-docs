# memcached.c

Subsystem: Core server / event loop. The largest file in the project (~6.3k lines)
and the server's spine. Read `../architecture.md` first; this document applies the
"group helpers, focus L4 on the non-obvious" depth policy rather than narrating
every one of its ~150 functions. Critical-path file.

## L1: Purpose and services

`memcached.c` is `main()` plus everything that owns a connection's lifecycle. It:
- parses command-line options and fills the global `settings`;
- initializes every subsystem in the right order and opens the listening sockets;
- defines the **connection object** (`conn`) lifecycle: `conn_new`, `conn_close`,
  buffer management, and the response (`mc_resp`) objects;
- runs the **connection state machine** `drive_machine`, the loop that turns socket
  readiness into command processing and response writing;
- bridges libevent (`event_handler`) to that state machine;
- creates listener sockets (`server_sockets`, `server_socket_unix`) and dispatches
  accepted connections to workers;
- houses the global stats reporting and the clock timer.

It is the file a new contributor should understand first, because almost every
request flows through `drive_machine` here.

## L2: Data structures

- **`struct conn`** (defined in `memcached.h`, managed here): one client connection.
  Key fields: `sfd` (socket), `state` (`enum conn_states`), `event`/`ev_flags`
  (libevent), `protocol`/`transport`, the input buffer (`rbuf`/`rcurr`/`rbytes`/
  `rsize`), the in-progress item and read cursor for a body (`item`/`ritem`/
  `rlbytes`), the response chain (`resp`/`resp_head`), function pointers
  (`try_read_command`, `read`, `sendmsg`, `write` - swapped for TCP vs TLS vs proxy),
  and a back-pointer to the owning `LIBEVENT_THREAD`.
- **`mc_resp`** (response object): one response, holding a small work buffer and an
  iovec list so values can be referenced (not copied) and many responses can be
  chained for a multi-key reply. Allocated from per-thread `mc_resp_bundle`s.
- **`struct settings settings`** (defined in `globals.c`): the single global config,
  filled by `settings_init` and option parsing.
- **`conn **conns`**: the table of live connections indexed by fd.
- **`enum conn_states`**: the states `drive_machine` walks (see `../architecture.md`
  section 3).

## L3: Functions (grouped)

### Startup and configuration
- `static void settings_init(void)` - default every field of `settings`.
- `int main(int argc, char **argv)` - parse options, init subsystems, open
  listeners, run the main event loop. (Init order is documented in
  `../architecture.md` section 7.)
- `static void conn_init(void)` - allocate the `conns` table.
- `static int server_socket(...)` / `server_sockets(...)` / `server_socket_unix(...)`
  - create, bind, and listen on TCP/UDP/Unix sockets and register their listener
  connections.

### Connection lifecycle
- `conn *conn_new(sfd, init_state, event_flags, read_buffer_size, transport, base, ssl, tag, bproto)` -
  build a `conn` for an accepted socket: pull it from the pool or allocate it,
  initialize buffers and protocol/transport function pointers, register its libevent
  event on the worker's base, and set its starting state.
- `void conn_set_state(conn *c, enum conn_states state)` - the single place state
  changes; also does per-state bookkeeping.
- `static void conn_cleanup(conn *c)` / `conn_close(conn *c)` / `void conn_close_all(void)` /
  `void conn_close_idle(conn *c)` - release items/responses/buffers and tear a
  connection down (or all of them, at shutdown, or idle ones on timeout).
- `void conn_release_items(conn *c)` - drop item references a connection is holding.
- Buffer helpers `rbuf_alloc`/`rbuf_release`/`rbuf_switch_to_malloc` and the response
  helpers `resp_start`/`resp_finish`/`resp_start_unlinked` - manage the read buffer
  and the response chain.

### The state machine and event loop
- `static void drive_machine(conn *c)` - the core loop. Detailed in L4.
- `void event_handler(evutil_socket_t fd, short which, void *arg)` - the libevent
  callback: sanity-check the fd, then call `drive_machine`.
- `static enum try_read_result try_read_network(conn *c)` / `try_read_udp(c)` - fill
  the read buffer from the socket, growing it as needed.
- `static int read_into_chunked_item(conn *c)` - read a value body into a chain of
  slab chunks (large items).
- `static bool update_event(conn *c, int new_flags)` - change what libevent watches
  (read vs write) for a connection.
- `static void reset_cmd_handler(conn *c)` - prepare a connection to parse the next
  command.

### Output and stats
- `void out_string(conn *c, const char *str)` / `out_of_memory(...)` - queue a short
  status line.
- `void server_stats(...)`, `process_stat_settings(...)`, and the `stats` machinery -
  gather and format server statistics.
- The clock timer (`clock_handler`) updates the global `current_time` roughly once a
  second.

## L4: The parts that matter

### `drive_machine` (the connection state machine)
This is the heart of the file. `event_handler` calls it whenever a connection's
socket is ready; it loops `while (!stop)` over `switch (c->state)`, running as many
states as it can before it would block. The important states:

- **`conn_listening`**: `accept()` (or `accept4` with `SOCK_NONBLOCK`) a new socket.
  It handles `EMFILE` by disabling accept, optionally rejects when over
  `maxconns_fast`, runs the TLS accept handshake if enabled, and then
  `dispatch_conn_new` hands the fd to a worker thread. Then `stop = true` (one accept
  per wakeup for the listener).
- **`conn_waiting` -> `conn_read`**: arm a read event and read bytes via
  `try_read_network` (or `try_read_udp`). The result routes to `conn_parse_cmd` (got
  data), back to `conn_waiting` (nothing yet), or `conn_closing` (error).
- **`conn_parse_cmd`**: call the protocol's `try_read_command` (ASCII or binary). If
  a full command was parsed it dispatches (into `proto_text.c`/`proto_bin.c`); if not
  it goes back to waiting, or flushes any buffered responses first.
- **`conn_new_cmd`**: the per-command reset. It decrements a `nreqs` budget so one
  busy connection cannot starve others on the same worker; when the budget is spent
  it yields the event loop (a neat fairness mechanism), flushing pending responses
  or arming a write event first.
- **`conn_nread`**: read a fixed-size value body into the in-progress item. It first
  drains leftover bytes already in the read buffer, then reads from the socket,
  handling chunked (large) items via `read_into_chunked_item`. When `rlbytes` hits 0
  it calls `complete_nread` (which lands in `complete_nread_ascii`/binary to actually
  store). `EAGAIN` arms a read event and stops; an allocation failure diverts to
  `conn_swallow`.
- **`conn_swallow`**: read and discard `sbytes` bytes - used when a body is too large
  to store, so the protocol stays in sync for the next command.
- **`conn_write` / `conn_mwrite`**: write out the response iov chain (`sendmsg`),
  handling partial writes and backpressure, then return to `conn_new_cmd`.
- **`conn_closing` / `conn_closed`**: tear down.
- **`conn_io_queue` / `conn_io_resume`**: park the connection while an async extstore
  read completes, then resume writing. (Set up by `storage.c`; resumed via the IO
  notify path in `thread.c`.)

The `stop` flag is what makes this cooperative: the loop runs states until an
operation would block (no more input, socket not writable, budget exhausted), then
returns to libevent so the worker can service other connections.

### `conn_new` (connection setup)
Recycles a `conn` from the pool or allocates one, resets all buffer cursors, selects
the protocol and transport function pointers (this is where TLS's read/write shims
or the proxy's handlers get wired in, so `drive_machine` stays protocol-agnostic),
registers the libevent event on the owning worker's base, and sets the initial
state (`conn_new_cmd` for a fresh client, `conn_listening` for a listener). Getting
these function pointers right here is what lets one state machine serve plain TCP,
TLS, UDP, and proxy connections without branching everywhere.

### `main` (startup and the main loop)
After option parsing and `settings_init`, it brings up subsystems in a dependency-
respecting order (clock/stats/logger, then `conn_init`, `hash_init`, `assoc_init`,
`slabs_init`, optional `storage_init`, then `memcached_thread_init` to spawn workers,
then the background maintenance threads), opens the listeners, optionally
`drop_privileges()`, and finally runs `event_base_loop(main_base, ...)`. The main
thread's own loop mostly just accepts connections and dispatches them; all request
work happens on the worker threads. The ordering guarantee - that the allocator,
hash table, workers, and disk storage are all live before any socket can accept - is
the reason this sequence is fixed.

### The clock and `current_time`
A libevent timer updates the global `current_time` about once a second. Storing a
coarse, server-relative time saves tens of thousands of `time()` syscalls per second
and lets items store a compact `rel_time_t` instead of an absolute timestamp; nearly
all expiry and LRU logic is written against `current_time`.
