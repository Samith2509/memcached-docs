# testapp.c

Subsystem: Test harness (not part of the running server). See
`../submodules-overview.md`. Complements the Perl integration tests under `t/`.

## L1: Purpose and services

`testapp.c` is a standalone **C test harness** built as the `testapp` binary and
run by `make test`. Unlike the `t/*.t` Perl tests (which drive a running server
over the network), `testapp` mixes two kinds of checks:
- **in-process unit tests** of self-contained modules linked directly into the
  binary - the `cache` allocator, `stats_prefix`, and `util`'s safe string/number
  parsers (`strtol`/`strtoull`/`vperror`).
- **binary-protocol integration tests** - it starts a real memcached child
  (`start_server`), opens a socket, and exercises the deprecated binary protocol
  end to end (set/add/replace/delete/get/gat/incr/decr/flush/stat/version, plus
  quiet `*q` variants, pipelining, and error handling).

Its purpose is to catch regressions in those primitives and in the binary wire
format that the higher-level Perl tests do not target directly.

## L2: Data structures

- **`struct testcase`**: one named test - a `name` string and a function pointer
  returning `enum test_return` (pass/skip/fail).
- **`testcases[]`**: the registry the harness iterates (`cache_create`,
  `stats_prefix_*`, `strtol`, `binary_*`, `issue_101`, ...).
- **`enum test_return`**: the result of a test.
- Per-test scratch: connection fds, request/response binary packet buffers, and (for
  the pipeline test) a receiver verification thread.

## L3: Functions

- `int main(int argc, char **argv)` - the driver: iterate `testcases[]`, run each,
  print TAP-style pass/fail, and set the exit code.
- `start_server(...)` - fork/exec a memcached child and connect to it, used by the
  integration tests.
- `test_binary_*` - one function per binary command/scenario (noop, quit(q), set(q),
  add(q), replace(q), delete(q), get/getq/getk/getkq, gat*, incr/decr(q), version,
  flush, prepend(q), stat, illegal command, pipeline hickup).
- Unit tests: `cache_*` (allocator create/reuse/redzone/limit), `stats_prefix_*`,
  and the `strtol`/`strtoll`/`strtoul`/`strtoull`/`vperror` conversions.
- `binary_hickup_recv_verification_thread` / `test_binary_pipeline_hickup*` -
  stress the server with a chunked/interrupted pipeline and verify all responses.

## L4: Function bodies (architecture)

### Two test styles in one binary
The unit tests call module functions directly (e.g. `cache_create_test` allocates
and frees through `cache.c`, `stats_prefix_*` exercise `stats_prefix.c`), so they
need no server. The binary-protocol tests instead go through `start_server`, which
launches an actual memcached and returns a connected socket; each `test_binary_*`
then hand-builds a request packet, writes it, reads the response packet, and
asserts on the status/CAS/value. This is why the file links a chunk of the server's
own object files - it reuses the real `cache`/`stats_prefix`/`util` code under test.

### Quiet-command and pipeline coverage
The binary protocol has "quiet" (`*q`) variants that suppress success replies and
are meant to be pipelined. The `*q` tests and especially
`test_binary_pipeline_hickup` verify that behavior: the hickup test streams many
pipelined commands with deliberately awkward chunk boundaries while a helper thread
(`binary_hickup_recv_verification_thread`) checks that exactly the expected
responses come back in order. This targets framing/buffering bugs that only appear
under pipelining.

### Relationship to the rest of the tests
`testapp` is the C-level safety net; the broader behavioral coverage (text/meta
protocol, LRU, extstore, TLS, proxy) lives in the Perl `t/*.t` suite. Together they
are what `make test` runs. A contributor adding a new module-level primitive should
add a `testcase` here; new protocol behavior usually gets a `t/*.t` test instead.
