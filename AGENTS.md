## General guidelines

**Project purpose:** Produce complete technical documentation of the memcached source code, and onboarding documentation that helps a new CS graduate become a core contributor.

### Goals

- **Goal 0:** Build a compilation database of the entire source using `bear`, with the compilation graph built on fully macro-expanded code. Then build a CodeQL database. Then analyse the `#include` statements to determine file-to-file dependencies and produce a dependency graph document. This dependency graph drives the documentation work.
- **Goal 1:** Identify optimization opportunities using x86 ASM and x86 SIMD.
- **Goal 2:** Create general documents (technical architecture, submodules overview, etc.), including mermaid diagrams showing subsystems and the C files in each.
- **Goal 3:** For each C file, write markdown documentation at these levels:
  - **L1:** Purpose of the file and the services it provides.
  - **L2:** Data structures, their purpose, and which subsystems or C files use them.
  - **L3:** For each function: what it does, who calls it and why, and what it returns.
  - **L4:** For each function body: what it does, documenting code blocks rather than individual lines.

### Documentation style

- Target a new graduate learning to become a core contributor. Do not assume PhD-level knowledge; keep it accessible.
- Aim for the right granularity: neither too detailed nor too terse.
- Do not use em dashes or en dashes.

### Workflow

- Be an expert in C programming, the memcached core-contributor role, and technical documentation.
- Split large tasks into phases; for large tasks, create and document an implementation plan first.
- After each phase, write a HandOff document detailing what was done. Compact your context, keeping only what the next phase needs and discarding the rest. Then decide whether to continue in the same conversation or start a new one (e.g. if compaction does not shrink context enough). If starting new, write a prompt for the next phase, append it to the HandOff file, and ask me to start a new conversation with it.
- Do not keep your name in commit messages.

### Permissions and conventions

- I trust this folder.
- Run `ls`, `find`, `sed`, `awk`, `cat`, `rgrep`, and `git commit` freely without asking for approval.
- Do not write Bash commands using double-quoted strings (they may trigger a permission prompt). Write Python scripts instead, and keep all scripts in the `scripts` folder.
- Do not read anything from `/mnt/c`.
- Create documentation in the `docs` folder.
