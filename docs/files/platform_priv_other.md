# solaris_priv.c, openbsd_priv.c, freebsd_priv.c, darwin_priv.c

Subsystem: Platform privilege drop. These are the non-Linux members of the
privilege-drop family. Exactly one `*_priv.c` is compiled per target OS; on this
Linux host none of these four are built (`linux_priv.c` is - see `linux_priv.md`).
They are documented together because they implement the *same* two-function
contract with each OS's native sandboxing API.

## L1: Purpose and services

Each file provides the OS-specific implementation of:
- `void drop_privileges(void)` - after startup, restrict what the process can do.
- `void setup_privilege_violations_handler(void)` - install a violation handler.

The rest of memcached calls these names unconditionally; the build picks the right
file, so there are no `#ifdef`s at the call sites. On these four platforms the
violation handler is a no-op (`// not needed`) because the OS terminates or
confines the process itself rather than delivering a catchable signal the way Linux
seccomp does.

## L2: Data structures

None of note. Each uses only the small OS-provided types for its API (Solaris
`priv_set_t`, FreeBSD `cap_rights_t`).

## L3 / L4: Per-file behavior

### `solaris_priv.c` (Solaris privileges)
`drop_privileges` starts from the "basic" privilege set and removes the dangerous
ones (`PRIV_FILE_LINK_ANY`, `PRIV_PROC_EXEC`, `PRIV_PROC_FORK`, `PRIV_PROC_INFO`,
`PRIV_PROC_SESSION`), then applies that as the permitted set with `setppriv`, and
empties the inheritable and limit sets so children (which there will not be) get
nothing. After this the process cannot `fork`, `exec`, and so on. Any failure
prints via `perror` and exits.

### `openbsd_priv.c` (pledge)
`drop_privileges` calls `pledge(2)` with a promise string describing the only
operations memcached still needs: `"stdio unix"` when listening on a Unix socket,
or `"stdio inet"` when listening on the network. After pledging, any attempt to use
a syscall outside the promise makes the kernel kill the process. Failure prints and
exits.

### `freebsd_priv.c` (Capsicum)
`drop_privileges` enters Capsicum capability mode. It first limits the rights on the
standard descriptors (read/fcntl/event on stdin, write on stdout/stderr) with
`cap_rights_limit`, then calls `cap_enter()`, after which the process can only use
already-open capability descriptors and can no longer access global namespaces
(open arbitrary files, fork, etc.). Each step exits on failure.

### `darwin_priv.c` (macOS sandbox)
`drop_privileges` calls `sandbox_init(kSBXProfileNoInternet, SANDBOX_NAMED, ...)`,
applying Apple's built-in "no internet" sandbox profile. The macOS `sandbox_init`
API is formally deprecated but still widely used (OpenSSH, etc.), so the file
silences the deprecation warning with `#pragma clang diagnostic`. Failure prints
the sandbox error and exits.

The common design across all four: reduce the process to the minimum capability set
right after it is fully initialized, so that a later compromise has as little reach
as possible. They differ only in which native mechanism each OS provides.
