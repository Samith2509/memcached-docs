# proxy_network.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.
Related: `proxy_tls.md` (backend TLS), `proxy_request.md`.

## L1: Purpose and services

`proxy_network.c` is the proxy's **backend network layer**: it owns the connections
from this proxy out to the upstream memcached servers and the dedicated event
thread(s) that drive them. Where the request/route code decides *what* to send,
this file handles *getting bytes to a backend and reading the reply* without
blocking a worker - connecting, queueing writes, reading responses, handling
timeouts and reconnects, all on a libevent loop. Public entry points include
`proxy_event_thread` (the loop), `proxy_run_backend_queue`, and
`proxy_choose_beconn`.

## L2: Data structures

- **`mcp_backend_t`**: a logical backend (one upstream server) - its address,
  health state, a queue of pending requests, and one or more physical connections.
- **`struct mcp_backendconn_s`**: one physical TCP (or TLS) connection to a backend
  - socket fd, read/write buffers, per-connection events (main/write/timeout), TLS
  state, and connect status.
- **`proxy_event_thread_t`**: a backend I/O thread with its own `event_base` and an
  inbound queue of backends needing service.
- **`be_head_t`**: a list of backends with queued work to flush.

## L3: Functions

Connection lifecycle: `_setup_backend`, `_cleanup_backend`,
`_proxy_beconn_checkconnect`, `_beconn_send_validate`, `proxy_choose_beconn`.

Event wiring: `_set_main_event`/`_stop_main_event`, `_start_write_event`/
`_stop_write_event`, `_start_timeout_event`, `proxy_event_beconn`,
`proxy_event_handler`, `_proxy_event_handler_dequeue`.

Queueing/flush: `_proxy_flush_backend_queue`, `proxy_run_backend_queue`.

Thread: `proxy_event_thread` (the backend I/O loop).

## L4: Function bodies (architecture)

### Dedicated backend event thread
Backend I/O runs on its own libevent thread(s), separate from the client worker
threads. A worker enqueues a request onto a backend and wakes the event thread via
`_proxy_event_handler_dequeue`; the event thread then owns all socket state. This
separation means a slow or dead backend never blocks a worker - the worker's route
suspends and is resumed by a callback when the reply (or a timeout) arrives.

### Non-blocking connect / write / read cycle
`_setup_backend` opens the socket and arms a connect event;
`_proxy_beconn_checkconnect` completes the async connect (and `_beconn_send_validate`
runs any post-connect handshake, e.g. TLS via `proxy_tls.c`). Writes are gathered
and flushed by `_proxy_flush_backend_queue`/`proxy_run_backend_queue`, arming a
write event when the socket would block. `proxy_event_handler` is the read side,
consuming responses and matching them to queued requests. The small
`_start_*_event`/`_stop_*_event` helpers just arm/disarm the libevent watchers for
each phase so the connection only listens for what it currently needs.

### Timeouts, health, and multiple connections
`_start_timeout_event` bounds how long a request may wait; on expiry the backend is
marked unhealthy and its connection is torn down and reconnected
(`_cleanup_backend`/`_setup_backend`). `proxy_choose_beconn` picks among a backend's
physical connections (a backend may keep several to increase throughput). This is
the machinery that lets the proxy fail fast and recover from backend problems
instead of stalling routes.
