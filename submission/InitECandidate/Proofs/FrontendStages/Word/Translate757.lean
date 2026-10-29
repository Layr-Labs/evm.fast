import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data757
import InitECandidate.Proofs.WordStages.Source821
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate757_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output757 =
    InitECandidate.Proofs.WordStages.source821 := by
  kernel_rfl
#print axioms translate757_eq
end InitECandidate.Proofs.FrontendStages.Word
