import InitECandidate.Proofs.FrontendStages.Word.Checkpoints559.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints559.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints559
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context559 Loop.output559.2.2 (623,2) =
    (InitECandidate.Proofs.WordStages.sourceBody623_721, (623, 72)) := by
  have h := node1385_eq
  rw [output1385_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints559
