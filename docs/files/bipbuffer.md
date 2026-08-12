# bipbuffer.c

Subsystem: External storage (extstore). Third-party code (Willem-Hendrik Thiart,
BSD, see `LICENSE.bipbuffer`).

## L1: Purpose and services

`bipbuffer.c` implements a bipartite buffer (a "bip buffer"): a ring buffer that
always hands out *contiguous* spans of memory. A normal circular buffer can wrap a
region across the end of the backing store, forcing callers to deal with two
pieces; a bip buffer instead maintains up to two regions (A and B) so that every
reserved or readable span is a single contiguous block. That property is exactly
what extstore wants for batching writes to disk with a single `write()`/`pwrite()`.

Services (declared in `bipbuffer.h`):
- Lifecycle: `bipbuf_new`/`bipbuf_init`/`bipbuf_free`.
- Producer side: `bipbuf_request` (reserve a contiguous span), `bipbuf_push`
  (commit bytes written into a reserved span), `bipbuf_offer` (copy data in).
- Consumer side: `bipbuf_peek`/`bipbuf_peek_all` (look at readable data),
  `bipbuf_poll` (consume readable data).
- Introspection: `bipbuf_size`, `bipbuf_used`, `bipbuf_unused`, `bipbuf_is_empty`.

Note: it is not internally thread-safe; the caller (extstore) provides locking.

## L2: Data structures

Defined in `bipbuffer.h`:
- **`bipbuf_t`**: the buffer header followed inline by its `data[]` storage. Fields:
  `size` (capacity), `a_start`/`a_end` (the readable region A), `b_end` (the end of
  the second region B, which always starts at offset 0), and `b_inuse` (whether
  region B is active). Region A is the data available to the reader; region B is
  where new writes go once A cannot grow toward the end anymore.

The two-region scheme: writes normally extend A toward the end of the buffer. When
the free gap after A becomes smaller than the free gap at the front, the buffer
"switches to B" and new writes go into region B at the front. When A is fully
consumed, B is promoted to become the new A.

## L3: Functions

### `bipbuf_t *bipbuf_new(unsigned int size)` / `void bipbuf_init(bipbuf_t *me, unsigned int size)`
Allocate (or initialize in place) a buffer with `size` bytes of storage. `new`
mallocs `sizeof(bipbuf_t) + size`; `init` just zeroes the cursors. Returns the
buffer (or nothing for `init`).

### `void bipbuf_free(bipbuf_t *me)`
Free a heap-allocated buffer.

### `int bipbuf_unused(const bipbuf_t *me)` / `int bipbuf_used(...)` / `int bipbuf_size(...)` / `int bipbuf_is_empty(...)`
Introspection. `unused` returns how many contiguous bytes can currently be
reserved (depends on whether B is active); `used` returns total readable bytes
across A and B; `size` returns capacity; `is_empty` reports whether A is empty.

### `unsigned char *bipbuf_request(bipbuf_t *me, int size)`
Reserve a contiguous span of `size` writable bytes and return a pointer to it, or
`NULL`/0 if there is not that much contiguous space. Does not yet commit; the
caller writes into the returned pointer and then calls `bipbuf_push`.

### `int bipbuf_push(bipbuf_t *me, int size)`
Commit `size` bytes that were just written into a previously requested span,
advancing the appropriate region end. Returns the number committed (0 if it would
not fit).

### `int bipbuf_offer(bipbuf_t *me, const unsigned char *data, int size)`
Convenience producer call: copy `size` bytes from `data` into the buffer and
commit them in one step. Returns bytes stored (0 if no room).

### `unsigned char *bipbuf_peek(const bipbuf_t *me, unsigned int size)` / `bipbuf_peek_all(..., unsigned int *size)`
Return a pointer to readable data without consuming it. `peek` checks a specific
size; `peek_all` returns the whole of region A and writes its length through
`size`. Returns `NULL` if empty or the request exceeds what is available.

### `unsigned char *bipbuf_poll(bipbuf_t *me, unsigned int size)`
Consume `size` bytes from region A and return a pointer to where they were. When A
becomes empty it promotes region B to A (or resets cursors to 0). Returns `NULL`
if empty or the request is invalid.

## L4: Notable body detail

### `__check_for_switch_to_b`
The one piece of real logic is this internal helper, called after every commit. It
turns on region B (`b_inuse = 1`) when the free space *after* A (`size - a_end`)
becomes smaller than the free space *before* A (`a_start - b_end`). In plain terms:
once the tail of the buffer is more cramped than the head, start directing new
writes to the front so they stay contiguous. `bipbuf_poll` performs the reverse
transition: when A drains to empty, B (the front region) is promoted to be the new
A, and if B was not in use the cursors simply reset to 0. This dance is what
guarantees every `request`/`peek` span is a single contiguous block.
