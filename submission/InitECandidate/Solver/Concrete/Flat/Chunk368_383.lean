import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.RemovedChunk368_383

/-! `psize ≤ stackS` on the `stack_remove` bodies of the baseline shard
`BackendStages.RemovedChunk368_383.bodies` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Flat.Chunk368_383
open InitECandidate.Proofs.BackendStages

theorem ok : RemovedChunk368_383.bodies.all (flatOkB stackS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Flat.Chunk368_383

#print axioms InitECandidate.Solver.Concrete.Flat.Chunk368_383.ok
