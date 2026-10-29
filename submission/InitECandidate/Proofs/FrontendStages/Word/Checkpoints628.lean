import InitECandidate.Proofs.FrontendStages.Word.Checkpoints628.Compose.Chunk006
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints628.Agreement.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints628
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context628 Loop.output628.2.2 (692,2) =
    (InitECandidate.Proofs.WordStages.sourceBody692_1248, (692, 128)) := by
  have h := node2573_eq
  rw [output2573_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints628
