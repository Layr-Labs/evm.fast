import InitECandidate.Proofs.FrontendStages.Word.Checkpoints592.Compose.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints592.Agreement.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints592
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context592 Loop.output592.2.2 (656,2) =
    (InitECandidate.Proofs.WordStages.sourceBody656_812, (656, 52)) := by
  have h := node1589_eq
  rw [output1589_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints592
