import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.RemovedChunk240_255

/-! `psize ≤ stackS` on the `stack_remove` bodies of the baseline shard
`BackendStages.RemovedChunk240_255.bodies` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Flat.Chunk240_255
open InitECandidate.Proofs.BackendStages

theorem ok : RemovedChunk240_255.bodies.all (flatOkB stackS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Flat.Chunk240_255

#print axioms InitECandidate.Solver.Concrete.Flat.Chunk240_255.ok
