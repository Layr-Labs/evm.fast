import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX
import InitECandidate.Solver.MemSafe.Demo2
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Model
import InitECandidate.Solver.MemSafe.Check
import InitECandidate.Solver.MemSafe.Demo
import InitECandidate.Solver.MemSafe.ShMem
import InitECandidate.Solver.MemSafe.Shrink
import InitECandidate.Solver.MemSafe.FpKeep
import InitECandidate.Solver.MemSafe.FpFold

/-!
# Memory-safety framework

* `MemSafe/Summary.lean`: **the frozen interface** (M0): the typed-heap invariant `G`, the
  summary shape `SumSpec` / `Summ`, conditional costs `CondCost`, the built-in allocator
  specs, the framing lemmas `G_frame` / `G_frame_prot`. Notes: scratchpad
  `memsafe-interface.md`.
* `MemSafe/HoareX.lean`: the full `Spec.HoareG` rule set (good results, including
  exceptions): stores, `while`, returns/raises, and all five call forms against any `FunSpec`.
* `MemSafe/Alloc.lean`: proofs of the built-in allocator specs (`AllocSpec` for `alloc` /
  `frame_mem_alloc` / `scratch_alloc`, `ReleaseSpec` for the releases, `MarkSpec'` for the
  marks), the `trap_with` spec (`funSpec_trap_with`) and `NullSafe guestCtx`.
* M1 checker: `AEnv` (abstract domain, activation invariant), `Write` (`G_write`), `AExp`
  (`aev_sound`), `Trans` (transport across callees), `Checker` (`chk`), `Sound0`–`Sound2`
  (**`chk_sound`**), `Store`/`StoreSound` (word stores), `CallSound`–`CallSound3` (calls,
  fresh results as temporaries, tail calls), `Cell` (byte/32-bit stores, globals,
  primitives, handlers), `WhileSound`, `Entry`, `Func` (**`summ_of_chk`**: an accepted body
  gives the frozen `Summ`), `PChk` (the local-free fast path `pchk`, `summ_of_pchk`),
  `Builtin` (summaries of the allocators and `trap_with`), `Fold` (the callee-first fold
  `chkChunk_sound`), `Demo2` (end to end on real guest functions).
* `MemSafe/Shards/`: the sharded fold over the guest (generated: `Tabs.lean`, `ShardNN`,
  `All.lean` with `tab_sound`). Not imported here: build the shards one at a time
  (`lake build InitECandidate.Solver.MemSafe.Shards.ShardNN`), then `Shards.All`.
* `MemSafe/Model.lean`, `Check.lean`, `Demo.lean` (namespace `MemSafe.Proto`): the phase-1
  prototype (store checker fragment, `chk_sound`, `decide_cbv` on real guest functions).

Design: scratchpad `memsafety-design.md`.
-/
