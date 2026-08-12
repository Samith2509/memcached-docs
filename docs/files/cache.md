# cache.c

Subsystem: Utilities.

## L1: Purpose and services

`cache.c` is a simple fixed-size object recycler (a free-list allocator). Instead
of calling `malloc`/`free` every time the server needs one of a frequently
allocated fixed-size structure, it hands out and takes back objects from a cached
free list, which reduces allocator churn and lock contention. Each cache holds
objects of one size.

Services:
- `cache_create` / `cache_destroy` - make and tear down a cache.
- `cache_alloc` / `cache_free` - thread-safe get/return of an object.
- `do_cache_alloc` / `do_cache_free` - the same without locking (caller holds the
  lock).
- `cache_set_limit` - bound how many objects the cache retains.

In debug builds it also adds redzone (guard) patterns around each object to catch
buffer overruns and use-after-free.

## L2: Data structures

Defined in `cache.h`, used here:
- **`cache_t`**: the cache itself - a name, a `pthread_mutex_t`, the object size
  (`bufsize`), counters (`total` allocated, `freecurr` on the free list), an
  optional `limit`, and a `STAILQ` head holding the free objects.
- **`struct cache_free_s`**: the link node stored *inside* a free object (via a
  `STAILQ` entry `c_next`). When an object is free its memory holds this link;
  when in use the caller owns the whole buffer. This is why `bufsize` must be at
  least `sizeof(struct cache_free_s)`.
- **`redzone_pattern`** (debug only): a magic 64-bit value written before and
  after each object to detect corruption.

Callers include any subsystem that recycles small fixed structures; the pattern is
used for things like connection-related and I/O objects.

## L3: Functions

### `cache_t *cache_create(const char *name, size_t bufsize, size_t align)`
Allocates and initializes a cache for `bufsize`-sized objects. Duplicates the
name, inits the mutex, inits the free list. In debug builds it enlarges `bufsize`
to make room for two redzones. Returns the cache, or `NULL` on allocation/mutex
failure. Called at startup by subsystems that want a recycler.

### `void cache_set_limit(cache_t *cache, int limit)`
Sets the maximum number of objects to keep cached (under the lock). Returns
nothing.

### `void cache_destroy(cache_t *cache)`
Frees every object still on the free list, then the name, mutex, and cache struct.

### `void *cache_alloc(cache_t *cache)` / `void *do_cache_alloc(cache_t *cache)`
Return an object: reuse one from the free list if available, else `malloc` a new
one (respecting `limit`). `cache_alloc` takes the mutex around `do_cache_alloc`;
`do_cache_alloc` is the lock-free core for callers that already hold it. Returns a
pointer to the object, or `NULL` if the limit is hit or `malloc` fails.

### `void cache_free(cache_t *cache, void *ptr)` / `void do_cache_free(cache_t *cache, void *ptr)`
Return an object to the cache: push it onto the free list, or actually `free` it if
the cache is over its limit. Locked and lock-free variants as above.

### `static void *get_object(void *ptr)`
In debug builds, adjusts a raw allocation pointer past the leading redzone to the
user-visible object; in release builds it is the identity. Internal helper.

## L4: Function bodies

### `do_cache_alloc`
Three cases: (1) if `freecurr > 0`, pop the head of the `STAILQ` free list and
decrement the free count; (2) else if under `limit`, `malloc` a fresh buffer and
bump `total`; (3) else return `NULL`. In debug builds, on success it writes the
`redzone_pattern` immediately before the object and immediately after the usable
region, so a later free can verify nothing overwrote the guards.

### `do_cache_free`
In debug builds it first validates both redzones; if either is clobbered it raises
`SIGABRT` (turning a silent heap bug into an immediate crash at the point of
detection). Then: if the cache is over its `limit`, `free` the object and decrement
`total`; otherwise push it back onto the free list and bump `freecurr`. The
free-list link is stored inside the object's own memory, so returning an object
costs no extra allocation.

The locked wrappers (`cache_alloc`/`cache_free`) exist so most callers do not have
to think about the mutex, while performance-sensitive callers that already hold a
relevant lock can use the `do_` variants to avoid double locking.
