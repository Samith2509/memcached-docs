# proxy_mutator.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`,
`proxy_request.md`, `proxy_result.md`.

## L1: Purpose and services

`proxy_mutator.c` implements a **request/response mutator**: a small
config-compiled program that builds or rewrites a request or response from parts,
without running Lua per request. A route can define a mutator once (a sequence of
"copy the key from the input", "set this command", "copy flag F", "set an error
code", ...) and then execute it cheaply on the hot path to produce a new request or
response. **It is explicitly marked experimental** in the source and not for
production until that warning is removed.

## L2: Data structures

- **`enum mcp_mut_type`**: whether a mutator produces a request or a response.
- **`enum mcp_mut_steptype`**: the step vocabulary - `cmdset`/`cmdcopy` (command),
  `keyset`/`keycopy` (key), `flagset`/`flagcopy`/`flagcopyall` (meta flags),
  `valcopy` (value), `resnull`/`rescodeset`/`rescodecopy`/`reserr` (response
  status/error). Each is one instruction.
- **`struct mcp_mut_step`**: one compiled instruction - a `steptype` plus a union of
  its operands (a `mcp_mut_string`, `mcp_mut_flag`, `mcp_mut_flagval`, etc.).
- **`struct mcp_mutator`**: the whole program - an ordered array of steps and its
  type.
- **`struct mcp_mut_run` / `struct mcp_mut_part`**: per-execution scratch - the
  input request/response, the output buffer being assembled, and the current part.
- **Step function-pointer typedefs**: `mcp_mut_c` (compile), `mcp_mut_i`
  (instance), `mcp_mut_n` (size/plan), `mcp_mut_r` (run) - each step type provides
  these four phases.

## L3: Functions

Validation helpers: `_mut_check_idx`, `_mut_check_strlen`, `_mut_check_flag`,
`_mut_init_flag`, `_mut_checkudata`.

Step implementations, grouped by type, each as a set of `mut_step_c/i/n/r`
(compile / instance / plan-size / run) via the `mut_step_*` macros - e.g.
`cmdset`, `cmdcopy`, `keycopy`, `keyset`, `flagset`/`flagcopy`/`flagcopyall`,
`valcopy`, and the response ones (`resnull`, `rescodeset`, `rescodecopy`, `reserr`).

Plus the Lua constructor/registration and the driver that runs all steps to
assemble the output.

## L4: Function bodies (architecture)

### Four-phase step model (`c` / `i` / `n` / `r`)
Every step type implements four functions, which is the file's organizing idea:
- **`_c` (compile)**: validate the Lua arguments and record constant operands into
  the `mcp_mut_step` at config time.
- **`_i` (instance)**: bind the step to a specific mutator slot.
- **`_n` (plan)**: compute how many output bytes this step will contribute, so the
  driver can size the output buffer in one pass before writing.
- **`_r` (run)**: on the hot path, write this step's bytes into the output buffer,
  copying from the input request/response or emitting the constant.

Splitting "how big" (`_n`) from "write it" (`_r`) lets the mutator allocate the
exact output size once and then fill it, avoiding reallocations mid-build.

### Copy vs set steps
`*set` steps emit a constant captured at compile time (e.g. force the command to
`mg`, or set a fixed error). `*copy` steps pull from the input (copy the key, copy a
flag's value, copy the whole value). `flagcopyall` copies every meta flag through.
Chaining these lets a route transform one request/response into another - e.g. take
an incoming `ms`, copy its key, set a different command, and copy selected flags -
entirely in C.

### Response mutators and error codes
For response mutators, `resnull` produces an empty/nil response, `rescodeset`/
`rescodecopy` set the meta response code, and `reserr` emits a protocol error
(`ERROR`/`CLIENT_ERROR`/`SERVER_ERROR`, per the `RESERR_*` constants). This lets a
route synthesize or rewrite a client-facing response without a real backend reply.

### Experimental status
Because the interface is experimental, a contributor should treat the step
vocabulary as unstable and read the warning banner at the top of the file before
building on it.
