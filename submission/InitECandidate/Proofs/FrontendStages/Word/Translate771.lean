import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data771
import InitECandidate.Proofs.WordStages.Source835
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate771_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output771 =
    InitECandidate.Proofs.WordStages.source835 := by
  kernel_rfl
#print axioms translate771_eq
end InitECandidate.Proofs.FrontendStages.Word
