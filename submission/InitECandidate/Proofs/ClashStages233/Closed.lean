import InitECandidate.Proofs.ClashStages233.Compose.Chunk015
import InitECandidate.Proofs.ClashStages233.Tree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages233
theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Parallel233.pass233_8 []) .ln .ln).isSome = true := by
  rw [tree_eq, ← tree1514_agree]
  have h := node1514_eq
  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1514 .ln .ln = result1514 at h
  rw [h]
  rfl
#print axioms checked
end InitECandidate.Proofs.ClashStages233
