import InitECandidate.Proofs.FrontendStages.Word.Checkpoints283.Compose.Chunk005
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints283.Agreement.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints283
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context283 Loop.output283.2.2 (347,2) =
    (InitECandidate.Proofs.WordStages.sourceBody347_797, (347, 54)) := by
  have h := node2279_eq
  rw [output2279_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints283
