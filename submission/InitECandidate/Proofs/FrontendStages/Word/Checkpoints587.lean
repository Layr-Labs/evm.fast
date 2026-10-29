import InitECandidate.Proofs.FrontendStages.Word.Checkpoints587.Compose.Chunk003
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints587.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints587
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context587 Loop.output587.2.2 (651,2) =
    (InitECandidate.Proofs.WordStages.sourceBody651_699, (651, 56)) := by
  have h := node1445_eq
  rw [output1445_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints587
