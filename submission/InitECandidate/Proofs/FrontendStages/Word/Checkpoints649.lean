import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Compose.Chunk028
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Agreement.Chunk028
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context649 Loop.output649.2.2 (713,2) =
    (InitECandidate.Proofs.WordStages.sourceBody713_5379, (713, 4)) := by
  have h := node10763_eq
  rw [output10763_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
