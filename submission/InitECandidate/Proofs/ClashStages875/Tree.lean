import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.WordStages.Parallel875.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages875
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Parallel875.pass875_8 [] = literal2518 := by
  kernel_rfl
#print axioms tree_eq
end InitECandidate.Proofs.ClashStages875
