import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data424
import InitECandidate.Proofs.WordStages.Source488
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate424_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output424 =
    InitECandidate.Proofs.WordStages.source488 := by
  kernel_rfl
#print axioms translate424_eq
end InitECandidate.Proofs.FrontendStages.Word
