import InitECandidate.Proofs.FrontendStages.Word.Checkpoints718.Compose.Chunk006
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints718.Agreement.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints718
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context718 Loop.output718.2.2 (782,2) =
    (InitECandidate.Proofs.WordStages.sourceBody782_1185, (782, 62)) := by
  have h := node2479_eq
  rw [output2479_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints718
