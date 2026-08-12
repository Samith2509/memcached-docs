#!/usr/bin/env python3
"""Goal 0d: analyse #include statements across the memcached source to build a
file-to-file dependency graph.

Outputs a JSON model (docs/analysis/include_graph.json) consumed by
gen_dependency_doc.py. Only the project's own translation units and headers are
treated as nodes; vendored Lua/liburing are excluded. Quoted includes and
angle-bracket includes that resolve to a project file are counted as internal
edges; everything else is recorded as an external/system include.
"""
import os, re, json, collections

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MEMC = os.path.join(ROOT, "memcached")

INC_RE = re.compile(r'^\s*#\s*include\s*([<"])([^">]+)[">]')

# Collect project files (own C/H). Exclude vendored trees and build junk.
def project_files():
    files = {}
    for name in os.listdir(MEMC):
        if name.endswith((".c", ".h")) and os.path.isfile(os.path.join(MEMC, name)):
            files[name] = os.path.join(MEMC, name)
    # vendored mcmc is part of the build (memcached_SOURCES) - include it
    for sub in ("vendor/mcmc",):
        d = os.path.join(MEMC, sub)
        if os.path.isdir(d):
            for name in os.listdir(d):
                if name.endswith((".c", ".h")):
                    files[name] = os.path.join(d, name)
    return files

files = project_files()
names = set(files)

edges = []            # (src_basename, dst_basename)
external = collections.defaultdict(list)  # src -> [system headers]
raw_includes = {}     # src -> list of (kind, target)

for name, path in sorted(files.items()):
    with open(path, encoding="utf-8", errors="replace") as fh:
        incs = []
        for line in fh:
            m = INC_RE.match(line)
            if not m:
                continue
            kind, target = m.group(1), m.group(2)
            incs.append((kind, target))
            base = os.path.basename(target)
            if base in names:
                edges.append((name, base))
            else:
                external[name].append(target)
        raw_includes[name] = incs

# Fan-in (how many files include this header) and fan-out (how many project
# headers a file pulls in).
fan_in = collections.Counter(dst for _, dst in edges)
fan_out = collections.Counter(src for src, _ in edges)

# External include popularity across project.
ext_counter = collections.Counter()
for src, lst in external.items():
    for t in set(lst):
        ext_counter[t] += 1

model = {
    "files": sorted(names),
    "c_files": sorted(n for n in names if n.endswith(".c")),
    "h_files": sorted(n for n in names if n.endswith(".h")),
    "edges": sorted(set(edges)),
    "fan_in": dict(fan_in),
    "fan_out": dict(fan_out),
    "external": {k: sorted(set(v)) for k, v in external.items()},
    "external_popularity": ext_counter.most_common(),
    "raw_includes": {k: v for k, v in raw_includes.items()},
}

os.makedirs(os.path.join(ROOT, "docs", "analysis"), exist_ok=True)
out = os.path.join(ROOT, "docs", "analysis", "include_graph.json")
json.dump(model, open(out, "w"), indent=1)
print(f"nodes={len(names)} internal_edges={len(set(edges))} -> {out}")
print("top fan-in headers:", fan_in.most_common(10))
