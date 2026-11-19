# Comparator export transport and bounded parallel kernel replay

`comparator-file-spool.patch` applies to `leanprover/comparator` commit
`c0c5a52d2aff92b457c3e5ed4a68c1ebc5795809`. `setup_tools.sh` checks its SHA-256
(`0f5bb1b4d9c700faf478bb54912463dff61f1f149441bef4eadea7ee35ee8339`) before
applying it and builds with this project's exact Lean patch release.

For `enable_nanoda=false`, the parent comparator copies exporter stdout in
64 KiB chunks into secure temporary files, then uses the existing stream
parser. It exports both environments before parsing either. This avoids
retaining the entire text alongside the exporter and parsed environments.
The verifier supplies a private disk-backed `TMPDIR` outside the candidate's
writable Lake cache; tmpfs and ramfs are rejected. Landrun gives candidates
write access only to the Lake cache. Temporary files are held by their open
handles, rewound after successful exporter exit, and removed on normal or
exceptional completion. Failed exporters and failed writes reject the run.

After parsing and running the unchanged statement/definition comparison,
primitive checks, and theorem/definition axiom closure checks, `Main.lean`
releases the parsed `Export.ExportedEnv` wrapper, triggers a forced mimalloc
collection, and streams the exported `constMap` through
`Comparator.ParallelReplay.checkParallel` (default `6` threads; direct
`comparator` invocations also accept `COMPARATOR_KERNEL_THREADS` or optional
`kernel_threads` in comparator JSON, whereas `verify.py` invokes `env -i` with a
fixed environment allowlist and an unmodified `verifier/comparator.json` so
official verifier runs always execute at the default `6` threads):

- A single-threaded topological producer rejects unsafe/partial declarations,
  disperses root and dependency traversal order via 64-bit hash mixing so
  large compiler-pass families do not cluster consecutively, checks axioms and
  inductive/quotient blocks sequentially via stock
  `Kernel.Environment.addDeclCore`, skips duplicate theorems already subsumed by
  the base environment (`name`, `type`, `levelParams`, `all`, matching stock
  `Lean.Environment.replay`), inserts remaining safe definitions, theorems, and
  opaques via `addDeclWithoutChecking` while pushing each item's exact
  pre-insertion `Kernel.Environment` into a bounded ring queue (`max(32,
  threads * 8)`), and verifies all postponed inductive, constructor, recursor,
  and quotient `ConstantInfo` entries with `==`.
- Expression dependency collection (`collectExprRefs`) traverses DAG nodes once
  via `PtrSet` and records `.const`, `.proj` structure type names, and literal
  primitive dependencies (`Nat`, `Nat.zero`, `Nat.succ`, `String`, `Char`,
  `String.ofList`, `Char.ofNat`, `List`, `List.nil`, `List.cons`) so topological
  order never misses implicit kernel lookups.
- Dedicated worker tasks check every deferred declaration independently via
  stock `Kernel.Environment.addDeclCore 0 0` against its pre-insertion
  environment snapshot, require `actual == expected` on the resulting constant,
  verify `checkedCount == totalEnqueued` on completion, and share an
  `IO.CancelToken` for immediate cancellation on any error.
- Live anonymous RSS admission (`/proc/self/statm`), structural heavy-reduction
  classification (`eagerReduce` and non-trivial `Eq.refl` / equality-transport
  proofs, with non-head ring selection so light items bypass throttled heavy
  items while worker `0` is always admitted), and mimalloc arena purge hooks
  keep peak resident memory bounded inside ~92 GiB isolated verifier guests.

The installed native comparator passes all 14 upstream fixtures, 9 adversarial
integration fixtures (`adv_*`), and the direct `ConstantInfo` soundness suite
(`tests/soundness_replay.lean`). Benchmark measurements are recorded in
`docs/PROOF-PERFORMANCE.md`.
