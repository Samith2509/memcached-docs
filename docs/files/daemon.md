# daemon.c

Subsystem: Core server / event loop. Third-party origin (BSD `daemon(3)`
implementation from NetBSD/California Regents).

## L1: Purpose and services

`daemon.c` provides a single service, `daemonize()`, which detaches the running
process from its controlling terminal so memcached can run as a background daemon.
It is a local copy of the classic BSD `daemon(3)` routine, bundled so behavior is
identical across the platforms memcached targets rather than depending on each
libc's version. It is invoked from `main()` when the server is started with the
`-d` option.

## L2: Data structures

None. It uses only a local file descriptor.

## L3: Functions

### `int daemonize(int nochdir, int noclose)`
Turns the caller into a daemon. `nochdir == 0` means "chdir to `/`" (so the daemon
does not pin a mount point); `noclose == 0` means "redirect stdin/stdout/stderr to
`/dev/null`". Returns `0` on success and `-1` on failure. Called once, early in
startup, before the event loop begins.

## L4: Function body

The body is the textbook daemonization sequence:

1. **Fork and let the parent exit.** `fork()`; the parent `_exit(EXIT_SUCCESS)`, the
   child continues. This detaches from the shell that launched it and guarantees
   the child is not a process-group leader (a precondition for the next step). A
   `fork()` returning `-1` makes the function return `-1`.
2. **New session.** `setsid()` makes the child a session leader with no controlling
   terminal, so it will not receive terminal signals.
3. **Optional chdir.** If `nochdir` is 0, `chdir("/")`; failing that returns `-1`.
4. **Optional redirect of standard streams.** If `noclose` is 0, open `/dev/null`
   and `dup2` it over stdin, stdout, and stderr so any stray output goes nowhere
   and the descriptors remain valid. A `dup2` failure jumps to `err_cleanup`, which
   closes the temporary fd and returns `-1`; otherwise the temporary fd is closed
   and the function returns `0`.

This is straightforward, well-worn code; the only subtlety is the fork-then-setsid
ordering, which is required for `setsid()` to succeed.
