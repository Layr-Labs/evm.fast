import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Compose.Chunk008
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Agreement.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context766 Loop.output766.2.2 (830,2) =
    (InitECandidate.Proofs.WordStages.sourceBody830_1574, (830, 6)) := by
  have h := node3149_eq
  rw [output3149_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
