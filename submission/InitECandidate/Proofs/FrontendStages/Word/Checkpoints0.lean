import InitECandidate.Proofs.FrontendStages.Word.Checkpoints0.Compose.Chunk001
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints0.Agreement.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints0
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context0 Loop.output0.2.2 (64,2) =
    (InitECandidate.Proofs.WordStages.sourceBody64_383, (64, 2)) := by
  have h := node767_eq
  rw [output767_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints0
