import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Compose.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Agreement.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context212 Loop.output212.2.2 (276,2) =
    (InitECandidate.Proofs.WordStages.sourceBody276_625, (276, 62)) := by
  have h := node1543_eq
  rw [output1543_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
