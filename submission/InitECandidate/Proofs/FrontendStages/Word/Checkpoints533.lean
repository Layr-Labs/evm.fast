import InitECandidate.Proofs.FrontendStages.Word.Checkpoints533.Compose.Chunk010
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints533.Agreement.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context533 Loop.output533.2.2 (597,2) =
    (InitECandidate.Proofs.WordStages.sourceBody597_1383, (597, 178)) := by
  have h := node4179_eq
  rw [output4179_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
