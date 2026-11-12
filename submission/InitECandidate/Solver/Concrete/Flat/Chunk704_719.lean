import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.RemovedChunk704_719

/-! `psize ≤ stackS` on the `stack_remove` bodies of the baseline shard
`BackendStages.RemovedChunk704_719.bodies` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Flat.Chunk704_719
open InitECandidate.Proofs.BackendStages

theorem ok : RemovedChunk704_719.bodies.all (flatOkB stackS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Flat.Chunk704_719

#print axioms InitECandidate.Solver.Concrete.Flat.Chunk704_719.ok
