import InitECandidate.Proofs.FrontendStages.Word.Checkpoints600.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints600.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints600
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context600 Loop.output600.2.2 (664,2) =
    (InitECandidate.Proofs.WordStages.sourceBody664_740, (664, 16)) := by
  have h := node1487_eq
  rw [output1487_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints600
