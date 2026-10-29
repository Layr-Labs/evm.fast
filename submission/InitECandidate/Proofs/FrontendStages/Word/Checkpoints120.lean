import InitECandidate.Proofs.FrontendStages.Word.Checkpoints120.Compose.Chunk002
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints120.Agreement.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints120
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context120 Loop.output120.2.2 (184,2) =
    (InitECandidate.Proofs.WordStages.sourceBody184_455, (184, 2)) := by
  have h := node864_eq
  rw [output864_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints120
