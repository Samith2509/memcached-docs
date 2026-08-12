#!/usr/bin/env python3
"""Goal 1: emit optimized x86-64 assembly and vectorizer reports for the
compute-heavy translation units, so we can spot SIMD/ASM opportunities.

For each target file we compile at -O3 -march=native with -ftree-vectorize and
-fopt-info-vec-all (GCC's vectorizer log). Assembly lands in docs/analysis/asm/,
vectorizer notes in docs/analysis/asm/<name>.vec.txt.
"""
import os, subprocess

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MEMC = os.path.join(ROOT, "memcached")
LE = os.path.join(ROOT, ".deps", "libevent", "include")
OUT = os.path.join(ROOT, "docs", "analysis", "asm")
os.makedirs(OUT, exist_ok=True)

TARGETS = [
    "jenkins_hash.c", "murmur3_hash.c", "crc32c.c", "base64.c",
    "itoa_ljust.c", "util.c", "assoc.c", "items.c", "proto_parser.c",
    "bipbuffer.c", "cache.c", "proxy_ring_hash.c", "proxy_jump_hash.c",
]

BASE = [
    "gcc", "-DHAVE_CONFIG_H", "-I.", f"-I{LE}",
    "-Ivendor/lua/src", "-Ivendor/liburing/src/include",
    "-O3", "-march=native", "-ftree-vectorize", "-pthread",
]

for t in TARGETS:
    src = os.path.join(MEMC, t)
    if not os.path.exists(src):
        print("skip missing", t)
        continue
    stem = t[:-2]
    asm = os.path.join(OUT, stem + ".s")
    # 1) assembly
    subprocess.run(BASE + ["-S", "-fverbose-asm", "-o", asm, t], cwd=MEMC,
                   capture_output=True, text=True)
    # 2) vectorizer report (compile to /dev/null object, capture stderr)
    r = subprocess.run(BASE + ["-fopt-info-vec-all", "-c", "-o", "/dev/null", t],
                       cwd=MEMC, capture_output=True, text=True)
    with open(os.path.join(OUT, stem + ".vec.txt"), "w") as fh:
        fh.write(r.stderr)
    vec = sum(1 for l in r.stderr.splitlines() if "loop vectorized" in l)
    miss = sum(1 for l in r.stderr.splitlines() if "not vectorized" in l)
    print(f"{t:22s} asm={os.path.getsize(asm):7d}B  vectorized={vec:3d}  not_vectorized={miss}")
