import InitECandidate.Proofs.FrontendStages.Word.Checkpoints811.Compose.Chunk008
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints811.Agreement.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints811
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context811 Loop.output811.2.2 (875,2) =
    (InitECandidate.Proofs.WordStages.sourceBody875_1847, (875, 120)) := by
  have h := node3413_eq
  rw [output3413_source] at h
  exact h
#print axioms compiledBody_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints811
