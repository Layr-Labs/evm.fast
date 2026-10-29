import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data367
import InitECandidate.Proofs.WordStages.Source431
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate367_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output367 =
    InitECandidate.Proofs.WordStages.source431 := by
  kernel_rfl
#print axioms translate367_eq
end InitECandidate.Proofs.FrontendStages.Word
