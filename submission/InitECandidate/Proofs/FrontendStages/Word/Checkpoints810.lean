import InitECandidate.Proofs.FrontendStages.Word.Checkpoints810.Compose.Chunk005
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints810.Agreement.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints810
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context810 Loop.output810.2.2 (874,2) =
    (InitECandidate.Proofs.WordStages.sourceBody874_1068, (874, 42)) := by
  have h := node2079_eq
  rw [output2079_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints810
