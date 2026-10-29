import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data747
import InitECandidate.Proofs.WordStages.Source811
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate731
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate747_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output747 =
    InitECandidate.Proofs.WordStages.source811 := by
  kernel_rfl
#print axioms translate747_eq
end InitECandidate.Proofs.FrontendStages.Word
