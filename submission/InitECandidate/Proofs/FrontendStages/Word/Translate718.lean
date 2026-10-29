import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data718
import InitECandidate.Proofs.WordStages.Source782
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate718_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output718 =
    InitECandidate.Proofs.WordStages.source782 := by
  kernel_rfl
#print axioms translate718_eq
end InitECandidate.Proofs.FrontendStages.Word
