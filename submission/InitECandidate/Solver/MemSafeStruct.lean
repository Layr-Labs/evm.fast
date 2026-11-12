import InitECandidate.Solver.MemSafe.Struct.Base
import InitECandidate.Solver.MemSafe.Struct.Ev
import InitECandidate.Solver.MemSafe.Struct.Trk
import InitECandidate.Solver.MemSafe.Struct.Run
import InitECandidate.Solver.MemSafe.Struct.Stack
import InitECandidate.Solver.MemSafe.Struct.Push
import InitECandidate.Solver.MemSafe.Struct.PushW
import InitECandidate.Solver.MemSafe.Struct.Swap
import InitECandidate.Solver.MemSafe.Struct.Mem
import InitECandidate.Solver.MemSafe.Struct.Cost
import InitECandidate.Solver.MemSafe.Struct.CWM

/-!
# Memory-safety summaries of the data structures (M4)

EVM stack, EVM memory (`extend_memory` and the memory opcodes), the journal and the LST lists.
Status: scratchpad `ms-struct-status.md`.

* `Struct/Base.lean`: `HooksMono`, layout of extensions, the master lemma `G_of`.
* `Struct/Ev.lean`: the EV stack/memory hook `EvSM`, `EvCfg`, `EvHook`, `PWev`.
* `Struct/Eval.lean`, `Struct/Sum.lean`: evaluation helpers, `G_sm` (writes to the running
  frame's stack/memory cells), `sumCore_same`.
* `Struct/Trk.lean`, `Struct/Run.lean`: `Trk` (tracking a body), `Fin`, `sumSpec_of_hoare`.
* `Struct/StackCode.lean`: certified code of the stack functions.
* `Struct/Stack.lean`: `sum_stack_pop`. `Struct/Push.lean`: `sum_stack_push`.
  `Struct/PushW.lean`: `sum_stack_push_word`, `sum_stack_push_bool`.
  `Struct/Swap.lean`: `sum_stack_swap_positions`.
* `Struct/FmemAlloc.lean`, `Struct/HelperGw.lean`, `Struct/Mem.lean`: `sum_extend_memory`
  (memory contiguity as precondition, in-place growth of the memory object).
* `Struct/CostCode.lean`, `Struct/Cost.lean`: functional specs of the memory-cost helpers
  (`mul64x64` exact), `emc1_ok` (the saturating-cost fact).
* `Struct/CWM.lean`: `sum_charge_with_memory` (`GAS_LEFT ≠ WORD_MAX` as precondition).
-/
