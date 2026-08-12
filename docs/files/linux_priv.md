# linux_priv.c

Subsystem: Platform privilege drop. This is the Linux member of a family of
mutually exclusive files (`{linux,solaris,openbsd,freebsd,darwin}_priv.c`); exactly
one is compiled, chosen by `configure` for the target OS. On this host only
`linux_priv.c` is built.

## L1: Purpose and services

`linux_priv.c` sandboxes memcached using Linux **seccomp** (secure computing mode).
After startup is complete and the server only needs a small, known set of system
calls, it installs a seccomp filter that allows exactly those syscalls and traps
everything else. If the process is later tricked (for example by an exploit) into
making a disallowed syscall, the kernel delivers `SIGSYS` and the process dies
immediately instead of doing something dangerous. This is defense in depth, enabled
with `--enable-seccomp`.

Services (the OS-agnostic names the server calls):
- `setup_privilege_violations_handler()` - install the `SIGSYS` handler that prints
  a diagnostic and exits.
- `drop_privileges()` - apply the strict syscall allowlist for the main thread.
- `drop_worker_privileges()` - apply the allowlist tuned for worker threads.

Every supported OS provides its own implementations of these same function names,
so the rest of memcached calls them without `#ifdef`s.

## L2: Data structures

- **`static char *kill_msg`**: a heap copy of the failure message. It is pre-built
  so the signal handler can mutate three characters in place (the `???`) to the
  offending syscall number without doing any allocation or formatting inside the
  handler.
- **`static const struct sigaction act`**: the `SIGSYS` action, pointing at
  `handle_syssig` with `SA_SIGINFO` so the handler receives the syscall number.
- **`DENY_ACTION` (`SCMP_ACT_TRAP`)**: the default action for the filter - trap
  (raise `SIGSYS`) on any syscall not explicitly allowed.

## L3: Functions

### `static void handle_syssig(int signum, siginfo_t *si, void *ctx)`
The `SIGSYS` handler. Reads the blocked syscall number from `si`, patches it into
`kill_msg`, writes the message to stderr, and calls `_exit(EXIT_FAILURE)`. Async-
signal-safe by construction. Returns nothing (the process exits).

### `void setup_privilege_violations_handler(void)`
Allocates and fills `kill_msg`, then installs `act` for `SIGSYS` via `sigaction`.
Called once during startup before the filter is loaded.

### `void drop_privileges(void)`
Builds and loads the seccomp filter for the main thread: a default-trap context
plus an allow rule for each syscall the running server legitimately needs. Called
late in startup (after listeners are open). No return; on any failure it prints an
error and `exit`s, because running without the intended sandbox is treated as
fatal.

### `void drop_worker_privileges(void)`
The same idea with a syscall set tuned for worker threads (network I/O, epoll,
memory, plus a few extras gated on features like `shutdown_command` and the LRU
crawler's thread creation).

## L4: Function bodies

### `handle_syssig`
It cannot safely call `printf` or even rely on much libc from a signal handler, so
it does the minimum: extract `si->si_syscall` (or the fallback `sival_int` when the
platform lacks `si_syscall`), overwrite the three `???` bytes in the pre-built
message with the syscall's hundreds/tens/units digits, `write(2, ...)` it, and
`_exit`. `_exit` (not `exit`) is used deliberately so no `atexit` handlers run and
no locks are taken while in signal context.

### `drop_privileges` / `drop_worker_privileges`
Both follow the same shape:
1. `seccomp_init(SCMP_ACT_TRAP)` - start a context whose default is to trap.
2. A long series of `seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(x), ...)`
   entries, one per permitted syscall. Most are unconditional; a few are argument-
   filtered (for example, `ioctl` is allowed only for `TIOCGWINSZ`/`TCGETS`, and in
   the worker's non-relaxed mode `write`/`writev` are allowed only to fds 1 and 2).
   Additional rules are compiled in under `MEMCACHED_DEBUG`, or added at runtime
   when `settings.relaxed_privileges` or `settings.shutdown_command` are set.
3. `seccomp_load(ctx)` - install the filter on the calling thread.
4. `seccomp_release(ctx)` and return; any failure jumps to `fail`, prints an error,
   and exits.

The worker allowlist differs from the main one by including the syscalls workers do
during request handling (`sendmsg`, `recvfrom`, `getpeername`, `mprotect`,
`mremap`, `clone` for spawning the crawler, etc.) while omitting startup-only calls.
The design principle throughout: allow the smallest set that keeps the server
working, and treat any surprise syscall as an attack.
