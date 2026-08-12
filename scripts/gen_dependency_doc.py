#!/usr/bin/env python3
"""Goal 0d: render docs/dependency-graph.md from include_graph.json.

Produces a human-readable dependency graph document: methodology, subsystem
grouping, mermaid diagrams (header spine + subsystem membership), and full
fan-in/fan-out and external-dependency tables.
"""
import os, json, collections

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
model = json.load(open(os.path.join(ROOT, "docs", "analysis", "include_graph.json")))

edges = [tuple(e) for e in model["edges"]]
fan_in = collections.Counter(model["fan_in"])
fan_out = collections.Counter(model["fan_out"])
files = set(model["files"])

# --- Subsystem classification (basename -> subsystem) -----------------------
SUBSYS = {
    "Core server / event loop": [
        "memcached.c", "memcached.h", "thread.c", "daemon.c", "globals.c",
        "sizes.c", "timedrun.c", "trace.h", "queue.h", "config.h",
    ],
    "Protocol handling": [
        "proto_text.c", "proto_text.h", "proto_bin.c", "proto_bin.h",
        "proto_parser.c", "proto_parser.h", "proto_parser_type.h",
        "protocol_binary.h",
    ],
    "Storage engine (items/slabs/LRU)": [
        "items.c", "items.h", "slabs.c", "slabs.h", "slabs_mover.c",
        "slabs_mover.h", "slab_automove.c", "slab_automove.h",
        "slab_automove_extstore.c", "slab_automove_extstore.h",
        "assoc.c", "assoc.h", "crawler.c", "crawler.h",
    ],
    "External storage (extstore)": [
        "extstore.c", "extstore.h", "storage.c", "storage.h",
        "bipbuffer.c", "bipbuffer.h", "restart.c", "restart.h",
    ],
    "Hashing / checksums": [
        "hash.c", "hash.h", "jenkins_hash.c", "jenkins_hash.h",
        "murmur3_hash.c", "murmur3_hash.h", "crc32c.c", "crc32c.h",
        "xxhash.h",
    ],
    "Proxy": [n for n in files if n.startswith("proxy") or n == "proto_proxy.c" or n == "proto_proxy.h"],
    "Crypto / auth / TLS": [
        "tls.c", "tls.h", "md5.c", "md5.h", "base64.c", "base64.h",
        "sasl_defs.c", "sasl_defs.h", "authfile.c", "authfile.h",
    ],
    "Logging / stats": [
        "logger.c", "logger.h", "stats_prefix.c", "stats_prefix.h",
    ],
    "Utilities": [
        "util.c", "util.h", "cache.c", "cache.h",
        "itoa_ljust.c", "itoa_ljust.h",
    ],
    "Platform privilege drop": [
        "linux_priv.c", "solaris_priv.c", "openbsd_priv.c",
        "freebsd_priv.c", "darwin_priv.c",
    ],
    "Vendored client (mcmc)": ["mcmc.c", "mcmc.h"],
    "Test harness": ["testapp.c"],
}
of_subsys = {}
for sub, members in SUBSYS.items():
    for m in members:
        of_subsys[m] = sub
# anything unclassified
for f in files:
    of_subsys.setdefault(f, "Other")

def mmid(name):
    return name.replace(".", "_").replace("-", "_")

lines = []
w = lines.append

w("# Memcached File-to-File Dependency Graph")
w("")
w("This document maps the `#include` dependencies between the C source files and")
w("headers of memcached 1.6.45. It is generated from the source by")
w("`scripts/analyze_includes.py` and `scripts/gen_dependency_doc.py`, and it is the")
w("reference that drives the per-file documentation work (Goal 3).")
w("")
w("## How this was produced")
w("")
w("- The full source was configured and compiled with `bear` to capture a")
w("  compilation database (`memcached/compile_commands.json`, 137 entries covering")
w("  both the release and debug builds plus the vendored Lua interpreter).")
w("- Every project translation unit was preprocessed with `gcc -E` into fully")
w("  macro-expanded `.i` files under `docs/analysis/expanded/` so that later")
w("  analysis can reason about post-macro code.")
w("- A CodeQL C/C++ database was built over the same compilation")
w("  (`.codeql/memcached-codeql-db`, ~38k lines of code).")
w("- Every `#include` directive in the project's own `.c`/`.h` files was parsed.")
w("  Includes that resolve to another project file become internal edges; the rest")
w("  are recorded as external/system dependencies. Vendored Lua and liburing are")
w("  excluded as nodes (they are third-party trees), but the vendored `mcmc`")
w("  client is included because it is part of `memcached_SOURCES`.")
w("")
w(f"The model has **{len(files)} nodes** ")
w(f"({len(model['c_files'])} C files, {len(model['h_files'])} headers) and ")
w(f"**{len(edges)} internal include edges**.")
w("")

# --- The header spine -------------------------------------------------------
w("## The header spine (who everything depends on)")
w("")
w("A handful of headers act as hubs. `memcached.h` is the central contract: it")
w("declares the connection object, settings, item structures, and the bulk of the")
w("server API, so almost every `.c` file includes it. `proxy.h` plays the same role")
w("for the proxy subsystem, and `storage.h` for the extstore path.")
w("")
w("| Header | Included by (fan-in) |")
w("|---|---|")
for h, c in fan_in.most_common(15):
    w(f"| `{h}` | {c} |")
w("")

# Diagram 1: fan-in to the top hub headers
TOPHUBS = [h for h, _ in fan_in.most_common(4)]
w("Dependents of the top hub headers:")
w("")
w("```mermaid")
w("graph LR")
for h in TOPHUBS:
    w(f"  {mmid(h)}([{h}])")
seen = set()
for src, dst in sorted(edges):
    if dst in TOPHUBS and src.endswith(".c"):
        key = (src, dst)
        if key in seen:
            continue
        seen.add(key)
        w(f"  {mmid(src)}[{src}] --> {mmid(dst)}")
w("```")
w("")

# --- Header-to-header graph -------------------------------------------------
w("## Header-to-header include graph")
w("")
w("Restricting the graph to headers reveals the architectural skeleton without the")
w("noise of every `.c` file. An edge `A --> B` means header A includes header B.")
w("")
w("```mermaid")
w("graph LR")
hh = [(s, d) for s, d in edges if s.endswith(".h") and d.endswith(".h")]
for s, d in sorted(set(hh)):
    w(f"  {mmid(s)}[{s}] --> {mmid(d)}[{d}]")
w("```")
w("")

# --- Subsystem membership + cross-subsystem edges ---------------------------
w("## Subsystems and their files")
w("")
w("Files grouped by subsystem. Edges between subgraphs are aggregated")
w("cross-subsystem `#include` relationships (deduplicated).")
w("")
w("```mermaid")
w("graph TB")
# subgraphs
sub_index = {}
for i, (sub, _) in enumerate(SUBSYS.items()):
    sub_index[sub] = f"S{i}"
members_by_sub = collections.defaultdict(list)
for f in sorted(files):
    members_by_sub[of_subsys[f]].append(f)
for sub, sid in sub_index.items():
    if not members_by_sub.get(sub):
        continue
    w(f"  subgraph {sid}[\"{sub}\"]")
    for f in members_by_sub[sub]:
        w(f"    {mmid(f)}[{f}]")
    w("  end")
# cross-subsystem aggregated edges
cross = collections.Counter()
for s, d in edges:
    a, b = of_subsys[s], of_subsys[d]
    if a != b:
        cross[(a, b)] += 1
for (a, b), cnt in cross.items():
    if a in sub_index and b in sub_index:
        w(f"  {sub_index[a]} ==>|{cnt}| {sub_index[b]}")
w("```")
w("")

# --- Full tables ------------------------------------------------------------
w("## Fan-out: project headers pulled in by each C file")
w("")
w("| C file | # project headers | Headers |")
w("|---|---|---|")
c_deps = collections.defaultdict(list)
for s, d in sorted(edges):
    if s.endswith(".c"):
        c_deps[s].append(d)
for c in sorted(model["c_files"]):
    deps = sorted(set(c_deps.get(c, [])))
    w(f"| `{c}` | {len(deps)} | {', '.join('`'+d+'`' for d in deps) if deps else '(none)'} |")
w("")

w("## Fan-in: who includes each header")
w("")
w("| Header | # includers | Included by |")
w("|---|---|---|")
h_incby = collections.defaultdict(list)
for s, d in sorted(edges):
    h_incby[d].append(s)
for h in sorted(model["h_files"]):
    inc = sorted(set(h_incby.get(h, [])))
    w(f"| `{h}` | {len(inc)} | {', '.join('`'+i+'`' for i in inc) if inc else '(none)'} |")
w("")

# --- External deps ----------------------------------------------------------
w("## External and system dependencies")
w("")
w("The most widely used non-project headers, ranked by how many project files")
w("include them. These indicate the platform and library surface memcached relies")
w("on (POSIX threads, sockets, libevent, OpenSSL, Lua, etc.).")
w("")
w("| External header | # project files including it |")
w("|---|---|")
for h, c in model["external_popularity"]:
    if c >= 2:
        w(f"| `{h}` | {c} |")
w("")

open(os.path.join(ROOT, "docs", "dependency-graph.md"), "w").write("\n".join(lines) + "\n")
print("wrote docs/dependency-graph.md", len(lines), "lines")
