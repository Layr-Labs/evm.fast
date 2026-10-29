import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data459
import InitECandidate.Proofs.WordStages.Source523
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate459_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output459 =
    InitECandidate.Proofs.WordStages.source523 := by
  kernel_rfl
#print axioms translate459_eq
end InitECandidate.Proofs.FrontendStages.Word
