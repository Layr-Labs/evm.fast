import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data810
import InitECandidate.Proofs.WordStages.Source874
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate794
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate810_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output810 =
    InitECandidate.Proofs.WordStages.source874 := by
  kernel_rfl
#print axioms translate810_eq
end InitECandidate.Proofs.FrontendStages.Word
