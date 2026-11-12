import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.Chunk80_95

/-! `noA` / `okP [storeConstsStubLocation]` on the `word_to_stack` bodies of the baseline shard
`BackendStages.Chunk80_95.bodies` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Stack.Chunk80_95
open InitECandidate.Proofs.BackendStages

theorem ok : Chunk80_95.bodies.all stackOkB = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Stack.Chunk80_95

#print axioms InitECandidate.Solver.Concrete.Stack.Chunk80_95.ok
