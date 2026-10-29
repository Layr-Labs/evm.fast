import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data709
import InitECandidate.Proofs.WordStages.Source773
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate693
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate709_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output709 =
    InitECandidate.Proofs.WordStages.source773 := by
  kernel_rfl
#print axioms translate709_eq
end InitECandidate.Proofs.FrontendStages.Word
