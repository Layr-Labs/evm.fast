import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data435
import InitECandidate.Proofs.WordStages.Source499
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate435_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output435 =
    InitECandidate.Proofs.WordStages.source499 := by
  kernel_rfl
#print axioms translate435_eq
end InitECandidate.Proofs.FrontendStages.Word
