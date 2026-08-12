# stats_prefix.c

Subsystem: Logging / stats.

## L1: Purpose and services

`stats_prefix.c` implements optional per-key-prefix statistics. When memcached is
started with a prefix delimiter (for example `:`), it tracks get/hit/set/delete
counts grouped by the portion of each key up to the first delimiter. So keys like
`user:1`, `user:2` roll up under the prefix `user`. This lets operators see which
key families are hot without per-key tracking. It is reported via the
`stats detail dump` command.

The file's own comments flag it as an aging subsystem (fixed-size table, no memory
bound beyond a hard cap) that should eventually be rewritten; document it as it is.

Services:
- `stats_prefix_init` / `stats_prefix_clear` - set up / reset.
- `stats_prefix_record_get` / `_record_set` / `_record_delete` - bump counters.
- `stats_prefix_find` - find or create the record for a key's prefix.
- `stats_prefix_dump` - format all prefix stats for the client.

## L2: Data structures

- **`PREFIX_STATS *prefix_stats[PREFIX_HASH_SIZE]`**: a fixed-size hash table of
  prefix records, chained by `next`. Keyed by hashing the prefix with the global
  `hash` function.
- **`PREFIX_STATS`** (in `stats_prefix.h`): one prefix's record - the prefix string
  and length, and counters `num_gets`, `num_hits`, `num_sets`, `num_deletes`.
- **`prefix_delimiter`**: the configured separator character.
- **`num_prefixes` / `total_prefix_size`**: bookkeeping used to cap the number of
  tracked prefixes (`MAX_PREFIX_COUNT`, 65536) and to size the dump buffer.

All access is serialized by the global `STATS_LOCK()`.

## L3: Functions

### `void stats_prefix_init(char delimiter)`
Records the delimiter and zeroes the table. Called at startup if prefix stats are
enabled.

### `void stats_prefix_clear(void)`
Frees every prefix record and resets counters. Called on reset.

### `PREFIX_STATS *stats_prefix_find(const char *key, size_t nkey)`
Given a key, extract the prefix (bytes up to the first delimiter) and return its
record, creating it if absent. Returns `NULL` if the key has no delimiter, or if the
prefix cap is hit, or on allocation failure. Called by the three `record_*`
functions (which hold the stats lock).

### `void stats_prefix_record_get(const char *key, size_t nkey, bool is_hit)`
Under the stats lock, look up the prefix and bump `num_gets` (and `num_hits` if the
get was a hit). Called from the get path when prefix stats are on.

### `void stats_prefix_record_set(...)` / `void stats_prefix_record_delete(...)`
Same shape, bumping `num_sets` / `num_deletes`.

### `char *stats_prefix_dump(int *length)`
Allocate a buffer big enough for all prefix lines, format each record as
`PREFIX <name> get N hit N set N del N`, append `END`, and return the buffer (caller
frees) with its length via `*length`. Returns `NULL` on allocation failure.

## L4: Notable bodies

### `stats_prefix_find`
1. **Extract the prefix.** Scan the key up to `nkey`, stopping at the delimiter or a
   `\0`. If no delimiter is found, return `NULL` (the key is not tracked).
2. **Look up.** Hash the prefix into `prefix_stats`, walk the chain, and return an
   existing record whose prefix matches (`strncmp`).
3. **Create if missing.** If under the `MAX_PREFIX_COUNT` cap, allocate a record and
   a copy of the prefix string, link it at the head of the bucket, and bump the
   counters. Over the cap it returns `NULL` (stats silently stop growing).

### `stats_prefix_dump`
Precomputes an upper bound on the output size from `total_prefix_size`,
`num_prefixes`, and the worst-case width of the counters (20 digits each), allocates
one buffer, then walks every bucket and chain formatting a line per prefix with
`snprintf`, tracking the write position. In debug builds it asserts it never
overruns the computed size. This "size first, then fill" approach avoids repeated
reallocation while holding the stats lock.
