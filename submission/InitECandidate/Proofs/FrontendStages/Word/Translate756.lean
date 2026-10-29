import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data756
import InitECandidate.Proofs.WordStages.Source820
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate756_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output756 =
    InitECandidate.Proofs.WordStages.source820 := by
  kernel_rfl
#print axioms translate756_eq
end InitECandidate.Proofs.FrontendStages.Word
