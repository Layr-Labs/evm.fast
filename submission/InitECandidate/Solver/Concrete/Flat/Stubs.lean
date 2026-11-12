import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.RemovedStubs

/-! `psize ≤ stackS` on the `stack_remove` stubs `BackendStages.RemovedStubs` (labels 0, 1, 2,
4, 5, 6; one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Flat.Stubs
open InitECandidate.Proofs.BackendStages

theorem ok : RemovedStubs.all (flatOkB stackS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Flat.Stubs

#print axioms InitECandidate.Solver.Concrete.Flat.Stubs.ok
