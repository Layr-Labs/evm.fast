import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data541
import InitECandidate.Proofs.WordStages.Source605
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate541_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output541 =
    InitECandidate.Proofs.WordStages.source605 := by
  kernel_rfl
#print axioms translate541_eq
end InitECandidate.Proofs.FrontendStages.Word
