# timedrun.c

Subsystem: Core server / event loop (test tooling). Standalone helper binary, not
linked into the server; used by the test suite.

## L1: Purpose and services

`timedrun.c` is a small "run this command, but kill it if it takes too long"
wrapper, like a minimal `timeout(1)`. The memcached test harness uses it to run a
test process with a hard time limit so a hung test cannot block the suite forever.
It builds as the `timedrun` binary with its own `main`.

Usage: `./timedrun <seconds> <command> [args...]`. It runs the command, and if the
timeout fires (or a signal arrives), it escalates signals until the child dies,
then reports the child's exit status.

## L2: Data structures

- **`volatile sig_atomic_t caught_sig`**: set by the signal handler to the number
  of the most recently caught signal, read by the wait loop. `sig_atomic_t` and
  `volatile` because it is shared between the handler and the main flow.

## L3: Functions

### `static void signal_handler(int which)`
Records `which` into `caught_sig`. The only thing safe to do in the handler.

### `static int wait_for_process(pid_t pid)`
Waits for the child, handling signals and timeouts, escalating how forcefully it
kills the child on each iteration. Returns the child's exit code, or `0x80 |
signal` if the child was terminated by a signal. Called by `spawn_and_wait`.

### `static int spawn_and_wait(char **argv)`
Forks; the child `execvp`s the target command, the parent calls
`wait_for_process`. Returns the child's result, or an `EX_*` code on fork/exec
failure.

### `static void usage(void)`
Prints usage and exits.

### `int main(int argc, char **argv)`
Parses the nap time (asserting `0 < naptime < 1800`), arms `alarm(naptime)`, and
runs the remaining arguments as the command via `spawn_and_wait`.

## L4: Notable body detail (`wait_for_process`)

It installs `signal_handler` for `SIGALRM`, `SIGHUP`, `SIGINT`, `SIGUSR1`,
`SIGTERM`, and `SIGPIPE`, then loops on `waitpid`. When the child exits it computes
the return value from `WIFEXITED`/`WEXITSTATUS` (or the terminating signal) and
breaks. Otherwise it was interrupted by a signal, and it escalates:

- `SIGHUP` is forwarded to the child gracefully and the escalation counter resets.
- On the first interruption it passes the caught signal through (or defaults to
  `SIGTERM`); the timeout `SIGALRM` prints "Timeout.. killing the process".
- On the second it sends `SIGTERM`; on any later iteration it sends `SIGKILL`.

After each kill attempt it arms `alarm(5)` to give the child up to five seconds to
die before escalating again. This staged escalation (polite signal, then TERM, then
KILL) is the standard way to shut down a possibly-wedged child without leaking it.
