# sasl_defs.c

Subsystem: Crypto / auth / TLS. See `../submodules-overview.md`.

## L1: Purpose and services

`sasl_defs.c` wires memcached into the Cyrus SASL library, which provides the
binary protocol's SASL authentication (e.g. PLAIN/CRAM-MD5). It defines the
callbacks SASL uses to find its config, log messages, and (optionally) check
passwords against memcached's own tiny password database, and it initializes the
SASL server at startup. The single public entry point is:
- `void init_sasl(void)` - discover the hostname, register callbacks, and call
  `sasl_server_init`.

Much of the file is compiled conditionally (`ENABLE_SASL_PWDB`,
`HAVE_SASL_CB_GETCONF*`) because which callbacks a given libsasl expects varies by
version.

## L2: Data structures

- **`char my_sasl_hostname[1025]`** (global): the hostname handed to SASL;
  referenced by the auth handlers in the protocol code.
- **`sasl_callbacks[]`** (static array): the `sasl_callback_t` table passed to
  `sasl_server_init` - entries for password check, logging, and config-path
  discovery, terminated by `SASL_CB_LIST_END`.
- **`locations[] / locations_dir_path[] / locations_file_path[]`**: candidate
  config file paths searched when `SASL_CONF_PATH` is unset.
- **`memcached_sasl_pwdb`** (static): path to the internal password file (from the
  `MEMCACHED_SASL_PWDB` env var), used only when `ENABLE_SASL_PWDB` is built.

## L3: Functions

- `static int sasl_server_userdb_checkpass(...)` - SASL callback that validates a
  user/pass against the `MEMCACHED_SASL_PWDB` file. Returns `SASL_OK` or
  `SASL_NOAUTHZ`. Only compiled with `ENABLE_SASL_PWDB`.
- `static int sasl_getconf(void *context, const char **path)` - SASL callback that
  reports where the config file lives (env var, else the built-in candidate
  locations). Returns `SASL_OK`/`SASL_FAIL`.
- `static int sasl_log(void *context, int level, const char *message)` - SASL
  logging callback that filters by `settings.verbose` and prints to stderr.
- `void init_sasl(void)` - startup initializer.

## L4: Function bodies

### `sasl_server_userdb_checkpass`
Opens the pwdb file and scans line by line for `user:pass[:...]`. For each line it
length-checks, compares the username with `safe_memcmp` and requires a following
`:`, then compares the password and requires a valid terminator (`:`, newline, or
NUL). It reads the whole file even after a match (no early break), returning
`SASL_OK` only if a match was seen. This is the fallback used when the deployment
does not have a full SASL user database configured.

### `init_sasl`
1. **Optional pwdb wiring.** If `ENABLE_SASL_PWDB` is built but
   `MEMCACHED_SASL_PWDB` is unset, it disables the checkpass callback by
   overwriting `sasl_callbacks[0]` with a list terminator, so libsasl won't try to
   use the internal db.
2. **Hostname.** Zeroes and fills `my_sasl_hostname` via `gethostname`, clearing
   it on failure.
3. **Init.** Calls `sasl_server_init(sasl_callbacks, "memcached")` and
   `exit(EXIT_FAILURE)` if it fails - SASL being requested but unusable is fatal.

### `sasl_getconf` and version portability
The config-path search differs between `HAVE_SASL_CB_GETCONF` and
`HAVE_SASL_CB_GETCONFPATH`: older libsasl wants a directory, newer wants a file
path, so the candidate arrays and the `access()` probes are selected by which
macro the build detected. This is the file's main portability wrinkle.
