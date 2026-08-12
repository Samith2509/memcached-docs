# sizes.c

Subsystem: Core server / event loop (developer tool, not part of the server).

## L1: Purpose and services

`sizes.c` is a tiny standalone diagnostic program (its own `main`) that prints the
`sizeof` memcached's core data structures. It is built as the `sizes` helper
binary, not linked into the server. A contributor runs it to see how big the
per-connection, per-item, and per-thread structures are on the current platform,
which matters because these structures are allocated in huge numbers and small
size changes have large memory impact.

## L2: Data structures

It does not define any; it only reports the sizes of structures defined in
`memcached.h`: `struct slab_stats`, `struct thread_stats`, `struct stats`,
`struct settings`, `item` (with and without CAS), `item_hdr` (extstore),
`LIBEVENT_THREAD`, `conn`, `mc_resp`, and `mc_resp_bundle`.

## L3: Functions

### `static void display(const char *name, size_t size)`
Prints one `name<TAB>size` line. Helper used for every reported structure.

### `int main(int argc, char **argv)`
Calls `display` for each core structure and returns 0. Some lines subtract nested
arrays to report a "base" size (for example, `thread_stats` minus its embedded
per-slab-class `slab_stats` array) so the number reflects the fixed overhead
rather than the class-count-dependent part. The extstore header line is compiled
only when `EXTSTORE` is defined.

## L4: Function body

Straight-line code: a sequence of `display(...)` calls, a separator line, and two
"cumulative" lines that print the full sizes of `LIBEVENT_THREAD` and
`thread_stats` including their embedded arrays. There is no logic to speak of; the
value of the file is entirely in what it measures, not how.
