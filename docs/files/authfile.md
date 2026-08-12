# authfile.c

Subsystem: Crypto / auth / TLS. See `../submodules-overview.md`.

## L1: Purpose and services

`authfile.c` implements the simple username/password authentication used by
memcached's ASCII/meta protocol when started with `--auth-file` (SASL-less plain
auth). It loads a small `user:pass` text file into memory and answers
credential-check queries. It provides:
- `authfile_load(const char *file)` - parse the auth file into the in-memory
  table (called at startup and on reload).
- `authfile_check(user, ulen, pass, plen)` - constant-time-ish check of a supplied
  credential pair against the table.

It is intentionally tiny (max 8 entries, 256 bytes per line) because it is a
convenience, not a real user database.

## L2: Data structures

- **`auth_t` / `struct auth_entry`**: one credential: `user` and `pass` pointers
  (into a single backing buffer) plus their lengths `ulen`/`plen`. Pointers alias
  the loaded file text rather than owning separate strings.
- **Globals**: `main_auth_entries[MAX_ENTRIES]` (the live table),
  `entry_cnt` (how many are valid), `main_auth_data` (the single heap buffer that
  backs all the string pointers), and `lock` (a mutex guarding swaps and reads).
- **`MAX_ENTRIES` (8), `MAX_ENTRY_LEN` (256)**: hard limits.

## L3: Functions

- `enum authfile_ret authfile_load(const char *file)` - opens and parses the file,
  building a fresh table in locals, then swaps it into the globals under `lock`.
  Returns `AUTHFILE_OK` or an error code (`OPENFAIL`, `STATFAIL`, `MALFORMED`).
  Callers: startup and the reload path.
- `int authfile_check(const char *user, unsigned int ulen, const char *pass,
  unsigned int plen)` - returns 1 if the pair matches an entry, else 0. Called by
  the protocol auth command handler.

## L4: Function bodies

### `authfile_load`
1. **Open + size.** Rejects an empty path; `fopen` + `fstat` to learn the file
   size, allocating one `calloc` buffer of `size + 2` to hold the whole file (the
   `+2` guards the fgets/terminator edge cases the comments describe).
2. **Line parse loop.** `fgets` reads up to one line (bounded by `MAX_ENTRY_LEN`
   or remaining buffer). For each line a small scanner walks characters: before
   the `:` it records the username and length; after it, it records the password
   up to `\n`/`\r`/`\0`. A line with no `:` is `AUTHFILE_MALFORMED` and aborts.
   The entry pointers alias into `auth_data`, so no per-string allocation happens.
3. **Truncation limit.** Stops after `MAX_ENTRIES` (the code marks this with a
   FIXME about silent truncation).
4. **Atomic swap.** Under `lock`, frees the previous `main_auth_data`, then
   publishes the new count, buffer, and entries with a `memcpy`. Doing the parse
   into locals first means a failed reload never corrupts the currently active
   credentials.

### `authfile_check`
Under `lock`, linearly scans the (at most 8) entries. It gates on exact length
match first, then compares user and pass with `safe_memcmp` (a length-checked,
timing-safer compare from `util.c`) so a match requires both fields equal.
Returns on the first hit. The lock is held for the whole scan so a concurrent
reload cannot free the buffer mid-compare.
