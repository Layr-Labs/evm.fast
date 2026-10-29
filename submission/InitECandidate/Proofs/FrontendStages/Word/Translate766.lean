import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data766
import InitECandidate.Proofs.WordStages.Source830
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate750
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate766_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output766 =
    InitECandidate.Proofs.WordStages.source830 := by
  kernel_rfl
#print axioms translate766_eq
end InitECandidate.Proofs.FrontendStages.Word
