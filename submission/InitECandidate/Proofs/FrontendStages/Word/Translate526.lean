import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data526
import InitECandidate.Proofs.WordStages.Source590
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate526_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output526 =
    InitECandidate.Proofs.WordStages.source590 := by
  kernel_rfl
#print axioms translate526_eq
end InitECandidate.Proofs.FrontendStages.Word
