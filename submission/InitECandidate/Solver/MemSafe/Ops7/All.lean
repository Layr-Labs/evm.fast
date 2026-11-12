import InitECandidate.Solver.MemSafe.Ops7.Create
import InitECandidate.Solver.MemSafe.Ops7.Create2
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_create` / `op_create2` step specs (sonnet-create)

* `Frames.j_op_create2 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2")`
  (unconditional);
* `Frames.j_op_create (hcca : Ops7.CcaHyp σ) : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ))
  (nm "op_create")`, open only in `CcaHyp σ` (`compute_contract_address`'s capability summary,
  `Ops7/Hyps.lean`).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem j_op_create2 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2") :=
  Ops7.j_op_create2

theorem j_op_create (hcca : Ops7.CcaHyp σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create") :=
  Ops7.j_op_create hcca

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_create
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_create2
