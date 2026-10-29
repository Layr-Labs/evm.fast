import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data805
import InitECandidate.Proofs.WordStages.Source869
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate789
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate805_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output805 =
    InitECandidate.Proofs.WordStages.source869 := by
  kernel_rfl
#print axioms translate805_eq
end InitECandidate.Proofs.FrontendStages.Word
