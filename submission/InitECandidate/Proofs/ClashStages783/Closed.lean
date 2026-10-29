import InitECandidate.Proofs.ClashStages783.Compose.Chunk012
import InitECandidate.Proofs.ClashStages783.Tree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages783
theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Parallel783.pass783_8 []) .ln .ln).isSome = true := by
  rw [tree_eq, ← tree1222_agree]
  have h := node1222_eq
  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1222 .ln .ln = result1222 at h
  rw [h]
  rfl
#print axioms checked
end InitECandidate.Proofs.ClashStages783
