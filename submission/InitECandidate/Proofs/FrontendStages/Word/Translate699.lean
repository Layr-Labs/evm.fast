import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data699
import InitECandidate.Proofs.WordStages.Source763
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate699_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output699 =
    InitECandidate.Proofs.WordStages.source763 := by
  kernel_rfl
#print axioms translate699_eq
end InitECandidate.Proofs.FrontendStages.Word
