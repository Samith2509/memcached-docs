# proxy_inspector.c

Subsystem: Proxy (Lua-driven routing). See `../submodules-overview.md`.

## L1: Purpose and services

`proxy_inspector.c` implements the proxy **request inspector**: a small,
config-time-compiled program of "steps" that examine a request's key and meta
flags at runtime to make routing decisions (e.g. "if the key begins with X",
"if flag F is present", "split the key on a separator"). Rather than run arbitrary
Lua per request (slow), a route can build an inspector once and then apply it
cheaply on the hot path. The file provides the constructor/getter functions that
build inspector steps from Lua and the per-step runtime evaluators.

## L2: Data structures

- **`struct mcp_inspector`**: a compiled inspector - an ordered list of steps plus
  any captured constants (separator strings, flag characters, comparison values).
- **`struct mcp_ins_step`**: one step - a runtime function pointer (`*_r`) plus its
  arguments. Steps are chained to form the inspection program.
- The naming convention encodes phase: `_c` = constant/compile-time setup, `_i` =
  instance setup, `_g` = getter, `_r` = runtime evaluate.

## L3: Functions

Compile/instance/getters (build a step from Lua config):
- flag steps: `mcp_inspector_flag_c_g`, `mcp_inspector_flag_i_g`,
  `mcp_inspector_flagstr_c`, `mcp_inspector_flagstr_i`.
- string steps: `mcp_inspector_string_c_g`, `mcp_inspector_string_i_g`.
- separator/key steps: `mcp_inspector_sepkey_c`, `mcp_inspector_sepkey_i`.

Runtime evaluators (`*_r`, run per request):
- `mcp_inspector_sepkey_r` - split the key on a separator and expose a part.
- `mcp_inspector_keybegin_r` - test/extract the key prefix.
- `mcp_inspector_keyis_r` - exact key match.
- `mcp_inspector_hasflag_r` - test presence of a meta flag.
- `mcp_inspector_flagtoken_r` / `mcp_inspector_flagint_r` - extract a flag's token
  value as string / integer.

## L4: Function bodies

### Compile-once, evaluate-many design
The split between `_c`/`_i` (setup) and `_r` (runtime) is the whole point. At
config load, the setup functions read the Lua arguments (which flag, which
separator, what to compare) and store them in `mcp_ins_step`, resolving as much as
possible up front. On each request only the `_r` evaluator runs, doing pure C
string/flag work against the parsed request with no Lua call. This keeps routing
decisions fast even when they depend on request content.

### Key steps (`sepkey`, `keybegin`, `keyis`)
These operate on the request key. `keybegin_r` compares a stored prefix against the
key head; `keyis_r` does a full equality test; `sepkey_r` finds a configured
separator and exposes the segment before/after it (e.g. to route on a namespace
embedded in the key). Each returns a result the route logic branches on.

### Flag steps (`hasflag`, `flagtoken`, `flagint`)
These scan the request's meta flags. `hasflag_r` reports presence; `flagtoken_r`
returns the flag's argument as a string; `flagint_r` parses it as an integer.
Because meta flags carry routing hints (opaque tokens, TTLs, region markers), these
let a route steer traffic based on client-supplied metadata without re-parsing the
whole command in Lua.
