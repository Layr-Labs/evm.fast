import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data41
import InitECandidate.Proofs.WordStages.Source105
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate25
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate41_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output41 =
    InitECandidate.Proofs.WordStages.source105 := by
  kernel_rfl
#print axioms translate41_eq
end InitECandidate.Proofs.FrontendStages.Word
