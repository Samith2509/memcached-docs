# restart.c

Subsystem: External storage / persistence. See `../submodules-overview.md`.
Related: `crc32c.md` (metadata checksum).

## L1: Purpose and services

`restart.c` implements memcached's **warm restart**: the ability to stop and start
the daemon (e.g. for an upgrade) without losing cached data. It works by placing
the entire item/slab memory in a file-backed shared `mmap` region instead of
anonymous memory, and by persisting a small metadata file describing the layout.
On startup it validates that the saved configuration is compatible and, if so,
reuses the memory in place (fixing up pointers) rather than starting empty. It
provides:
- a **registration API** so each subsystem/engine can contribute its own save and
  check callbacks (`restart_register`),
- the **metadata key/value** read/write helpers used by those callbacks
  (`restart_set_kv`, `restart_get_kv`),
- the **mmap lifecycle** (`restart_mmap_open`, `restart_mmap_close`), and
- **pointer fixup** (`restart_fixup`) run once at startup.

## L2: Data structures

- **`struct _restart_data_cb`**: one registered module's callbacks - a `tag`, a
  check callback (`restart_check_cb`), a save callback (`restart_save_cb`), and an
  opaque `data`. Stored in a linked list so many subsystems can participate.
- **mmap globals**: `mmap_base`, `mmap_fd`, `memory_file`, `slabmem_limit` -
  describe the shared memory segment.
- **A metadata line format**: the saved file is `tag`-scoped `key=value` lines,
  parsed/emitted by the get/set helpers.

## L3: Functions

- `void restart_register(tag, ccb, scb, data)` - add a module's save/check
  callbacks to the list.
- `static int restart_check(const char *file)` - parse the metadata file and call
  every module's check callback; returns non-zero if the saved state is
  incompatible (forcing a cold start).
- `enum restart_get_kv_ret restart_get_kv(void *ctx, char **key, char **val)` -
  iterate the metadata key/values for a module (used inside check callbacks).
- `static int restart_save(const char *file)` - call every module's save callback
  and write the metadata file.
- `void restart_set_kv(void *ctx, const char *key, const char *fmt, ...)` - write a
  formatted key/value into the metadata (used inside save callbacks).
- `static long _find_pagesize(void)` - query the OS page size.
- `bool restart_mmap_open(size_t limit, const char *file, void **mem_base)` - open
  or create the shared segment; returns whether it can be reused.
- `void restart_mmap_close(void)` - sync, save metadata, unmap, close.
- `unsigned int restart_fixup(void *orig_addr)` - walk restored memory and repair
  pointers for the new base address.

## L4: Function bodies

### `restart_mmap_open` (attach the memory)
Opens (or creates) the backing file, `ftruncate`s it to the exact memory limit,
sanity-checks that the limit is page-aligned (aborts otherwise), and `mmap`s it
`MAP_SHARED`. It sets `slabmem_limit` *before* calling `restart_check` so the
checker can locate the metadata page. The return value tells `slabs.c` whether to
reuse the contents (`restart_check` passed) or treat the region as fresh.

### `restart_mmap_close` (detach cleanly)
`msync`s the segment to disk, runs `restart_save` to persist metadata, then
`munmap`s and closes the fd. Doing the save here (on graceful shutdown) is what
makes the next start able to reuse the data.

### `restart_fixup` (pointer repair)
Because the mmap may attach at a different virtual address than last time, every
internal pointer (hash table links, LRU links inside items) would be wrong. Rather
than translate on every access, `restart_fixup` walks the restored memory once at
startup and rewrites pointers relative to the new base (`orig_addr` is the old
base). This front-loads the cost so the running server pays nothing per access.

### The register/save/check pattern
`restart.c` owns the file format but not the knowledge of what to save. Each
subsystem calls `restart_register` with a tag and callbacks; on shutdown
`restart_save` invokes every save callback (which emit `key=value` via
`restart_set_kv`), and on startup `restart_check` invokes every check callback
(which read back via `restart_get_kv` and verify compatibility - e.g. that the
slab sizes and item size match). Any mismatch returns non-zero and forces a safe
cold start. The metadata integrity itself is protected with a CRC32C
(`crc32c.md`).
