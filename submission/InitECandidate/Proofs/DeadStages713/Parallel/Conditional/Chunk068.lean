import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk068
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node17408_cond_eq
    (child17406 : Flapjack.WordAlloc.removeDeadStructural input17406 value0 value1 value2 = (output17406, value6896, value1))
    (child17407 : Flapjack.WordAlloc.removeDeadStructural input17407 value6896 value1 value2 = (output17407, value6906, value1)) : Flapjack.WordAlloc.removeDeadStructural input17408 value0 value1 value2 = (output17408, value6906, value1) := by
  rw [input17408_def, output17408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17406]
  try dsimp only
  rw [child17407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17406_skip, output17407_skip]
  kernel_rfl

#print axioms node17408_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
