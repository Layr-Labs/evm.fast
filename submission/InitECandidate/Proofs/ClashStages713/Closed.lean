import InitECandidate.Proofs.ClashStages713.Compose.Chunk125
import InitECandidate.Proofs.ClashStages713.Tree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Sparse713.pass713_8 []) .ln .ln).isSome = true := by
  rw [tree_eq, ← tree12034_agree]
  have h := node12034_eq
  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12034 .ln .ln = result12034 at h
  rw [h]
  rfl
#print axioms checked
end InitECandidate.Proofs.ClashStages713
