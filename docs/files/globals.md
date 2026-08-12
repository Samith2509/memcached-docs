# globals.c

Subsystem: Core server / event loop.

## L1: Purpose and services

`globals.c` exists solely to *define* (allocate storage for) the handful of
process-wide global variables that the rest of memcached refers to via `extern`
declarations in `memcached.h`. It provides no functions.

The reason it is its own file is a linking concern, spelled out in its comment:
these globals used to live in `memcached.c`, but `memcached.c` also contains
`main()`. The test harness (`testapp.c`) needs to link the other object files
*without* `memcached.c` (and its `main`). Pulling the globals into a separate,
`main`-free translation unit lets both the server and the tests link them.

## L2: Data structures (the globals it defines)

- **`volatile rel_time_t current_time`**: the server's coarse clock. A timer event
  updates it about once a second; code reads it instead of calling `time()` tens of
  thousands of times a second. Timestamps are stored relative to server start
  (`rel_time_t`), which is smaller than an absolute `time_t` on many platforms.
  `volatile` because it is written by a timer callback and read everywhere.
- **`struct stats stats`**: the global counters that are updated with atomics or
  under locks (total connections, evictions, etc.).
- **`struct stats_state stats_state`**: mutable state backing the stats subsystem.
- **`struct settings settings`**: the one global configuration record, filled by
  `settings_init()` and command-line parsing, read throughout the server.

Every subsystem uses `settings`; the stats structures are used by the stats
reporting code and updated across the storage and networking paths; `current_time`
is used pervasively for expiry and LRU bookkeeping.

## L3 / L4: Functions

None. This file contains only definitions, no code.
