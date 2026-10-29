import InitECandidate.Proofs.FrontendStages.Word.Checkpoints583.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints583.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints583
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context583 Loop.output583.2.2 (647,2) =
    (InitECandidate.Proofs.WordStages.sourceBody647_749, (647, 8)) := by
  have h := node1392_eq
  rw [output1392_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints583
