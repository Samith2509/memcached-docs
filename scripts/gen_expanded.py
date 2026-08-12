#!/usr/bin/env python3
"""Goal 0b: produce fully macro-expanded (.i) sources for every project
translation unit, by replaying each entry's exact compile flags with `gcc -E`.

Reads memcached/compile_commands.json, dedups by source file (prefers the
non-debug memcached_SOURCES variant), skips vendored Lua, and writes:
  docs/analysis/expanded/<name>.i
  docs/analysis/expanded_compile_commands.json  (compile DB over the .i files)
"""
import json, os, subprocess, shlex, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MEMC = os.path.join(ROOT, "memcached")
OUT = os.path.join(ROOT, "docs", "analysis", "expanded")
os.makedirs(OUT, exist_ok=True)

db = json.load(open(os.path.join(MEMC, "compile_commands.json")))

# Dedup by absolute source path. Prefer entries whose output is NOT the debug
# build (debug adds -DMEMCACHED_DEBUG + gcov). Skip vendored lua interpreter.
chosen = {}
for e in db:
    f = e["file"]
    if "vendor/lua/src" in f:
        continue
    is_debug = "MEMCACHED_DEBUG" in " ".join(e.get("arguments", [])) or "_debug-" in e.get("output", "")
    prev = chosen.get(f)
    if prev is None or (prev[0] and not is_debug):
        chosen[f] = (is_debug, e)

expanded_db = []
ok = fail = 0
for f, (_, e) in sorted(chosen.items()):
    args = list(e["arguments"])
    # Replace the compile action (-c) with preprocess (-E), strip output/-o and
    # dependency-generation flags so we get clean stdout of expanded code.
    out_i = os.path.join(OUT, os.path.basename(f)[:-2] + ".i")
    new = []
    skip_next = False
    for i, a in enumerate(args):
        if skip_next:
            skip_next = False
            continue
        if a == "-c":
            continue
        if a == "-o":
            skip_next = True
            continue
        if a in ("-MD", "-MP"):
            continue
        if a in ("-MT", "-MF"):
            skip_next = True
            continue
        new.append(a)
    new += ["-E", "-P"]  # -P suppresses line markers for cleaner expanded code
    cwd = e.get("directory", MEMC)
    try:
        r = subprocess.run(new, cwd=cwd, capture_output=True, text=True)
        if r.returncode != 0:
            print("FAIL", f, r.stderr.splitlines()[-1] if r.stderr else "", file=sys.stderr)
            fail += 1
            continue
        with open(out_i, "w") as fh:
            fh.write(r.stdout)
        ok += 1
        expanded_db.append({
            "directory": cwd,
            "file": out_i,
            "arguments": [a for a in new if a not in ("-E", "-P")] + ["-c", "-o", out_i[:-2] + ".o"],
        })
    except Exception as ex:
        print("ERR", f, ex, file=sys.stderr)
        fail += 1

json.dump(expanded_db, open(os.path.join(ROOT, "docs", "analysis", "expanded_compile_commands.json"), "w"), indent=1)
print(f"expanded ok={ok} fail={fail} -> {OUT}")
