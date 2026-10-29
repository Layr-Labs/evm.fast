import InitECandidate.Proofs.FrontendStages.Word.Checkpoints167.Compose.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints167.Agreement.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints167
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context167 Loop.output167.2.2 (231,2) =
    (InitECandidate.Proofs.WordStages.sourceBody231_953, (231, 62)) := by
  have h := node1889_eq
  rw [output1889_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints167
