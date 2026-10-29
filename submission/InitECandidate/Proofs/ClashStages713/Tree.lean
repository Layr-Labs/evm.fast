import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.WordStages.Sparse713.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Sparse713.pass713_8 [] = literal12034 := by
  kernel_rfl
#print axioms tree_eq
end InitECandidate.Proofs.ClashStages713
