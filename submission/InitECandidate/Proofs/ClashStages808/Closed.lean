import InitECandidate.Proofs.ClashStages808.Compose.Chunk006
import InitECandidate.Proofs.ClashStages808.Tree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages808
theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree InitECandidate.Proofs.WordStages.Parallel808.pass808_8 []) .ln .ln).isSome = true := by
  rw [tree_eq, ← tree646_agree]
  have h := node646_eq
  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 .ln .ln = result646 at h
  rw [h]
  rfl
#print axioms checked
end InitECandidate.Proofs.ClashStages808
