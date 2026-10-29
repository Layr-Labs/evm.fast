import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data72
import InitECandidate.Proofs.WordStages.Source136
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate56
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate72_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output72 =
    InitECandidate.Proofs.WordStages.source136 := by
  kernel_rfl
#print axioms translate72_eq
end InitECandidate.Proofs.FrontendStages.Word
