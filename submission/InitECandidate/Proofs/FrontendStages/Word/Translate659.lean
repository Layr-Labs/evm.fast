import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data659
import InitECandidate.Proofs.WordStages.Source723
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate659_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output659 =
    InitECandidate.Proofs.WordStages.source723 := by
  kernel_rfl
#print axioms translate659_eq
end InitECandidate.Proofs.FrontendStages.Word
