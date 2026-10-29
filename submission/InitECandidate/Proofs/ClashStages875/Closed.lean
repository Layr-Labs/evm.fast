import InitECandidate.Proofs.ClashStages875.Compose.Chunk026
import InitECandidate.Proofs.ClashStages875.Tree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages875
theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Parallel875.pass875_8 []) .ln .ln).isSome = true := by
  rw [tree_eq, ← tree2518_agree]
  have h := node2518_eq
  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2518 .ln .ln = result2518 at h
  rw [h]
  rfl
#print axioms checked
end InitECandidate.Proofs.ClashStages875
