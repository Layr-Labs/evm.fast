import InitECandidate.Proofs.FrontendStages.Word.Checkpoints802.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints802.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints802
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context802 Loop.output802.2.2 (866,2) =
    (InitECandidate.Proofs.WordStages.sourceBody866_708, (866, 40)) := by
  have h := node1335_eq
  rw [output1335_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints802
