import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data655
import InitECandidate.Proofs.WordStages.Source719
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate655_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output655 =
    InitECandidate.Proofs.WordStages.source719 := by
  kernel_rfl
#print axioms translate655_eq
end InitECandidate.Proofs.FrontendStages.Word
