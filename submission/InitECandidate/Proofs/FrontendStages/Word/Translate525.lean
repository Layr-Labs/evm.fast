import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data525
import InitECandidate.Proofs.WordStages.Source589
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate509
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate525_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output525 =
    InitECandidate.Proofs.WordStages.source589 := by
  kernel_rfl
#print axioms translate525_eq
end InitECandidate.Proofs.FrontendStages.Word
