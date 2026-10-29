import InitECandidate.Proofs.FrontendStages.Word.Checkpoints636.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints636.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints636
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context636 Loop.output636.2.2 (700,2) =
    (InitECandidate.Proofs.WordStages.sourceBody700_711, (700, 60)) := by
  have h := node1443_eq
  rw [output1443_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints636
