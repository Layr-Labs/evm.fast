import InitECandidate.Proofs.FrontendStages.Word.Checkpoints15.Compose.Chunk001
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints15.Agreement.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context15 Loop.output15.2.2 (79,2) =
    (InitECandidate.Proofs.WordStages.sourceBody79_296, (79, 2)) := by
  have h := node586_eq
  rw [output586_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
