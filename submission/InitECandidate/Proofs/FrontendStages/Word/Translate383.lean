import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data383
import InitECandidate.Proofs.WordStages.Source447
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate383_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output383 =
    InitECandidate.Proofs.WordStages.source447 := by
  kernel_rfl
#print axioms translate383_eq
end InitECandidate.Proofs.FrontendStages.Word
