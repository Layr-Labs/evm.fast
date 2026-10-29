import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data395
import InitECandidate.Proofs.WordStages.Source459
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate395_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output395 =
    InitECandidate.Proofs.WordStages.source459 := by
  kernel_rfl
#print axioms translate395_eq
end InitECandidate.Proofs.FrontendStages.Word
