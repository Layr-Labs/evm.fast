import InitECandidate.Proofs.FrontendStages.Word.Checkpoints582.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints582.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints582
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context582 Loop.output582.2.2 (646,2) =
    (InitECandidate.Proofs.WordStages.sourceBody646_825, (646, 8)) := by
  have h := node1532_eq
  rw [output1532_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints582
