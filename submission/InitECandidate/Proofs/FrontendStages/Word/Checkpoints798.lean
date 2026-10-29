import InitECandidate.Proofs.FrontendStages.Word.Checkpoints798.Compose.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints798.Agreement.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context798 Loop.output798.2.2 (862,2) =
    (InitECandidate.Proofs.WordStages.sourceBody862_815, (862, 74)) := by
  have h := node1542_eq
  rw [output1542_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
