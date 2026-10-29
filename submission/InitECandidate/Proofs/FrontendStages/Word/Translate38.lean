import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data38
import InitECandidate.Proofs.WordStages.Source102
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate22
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate38_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output38 =
    InitECandidate.Proofs.WordStages.source102 := by
  kernel_rfl
#print axioms translate38_eq
end InitECandidate.Proofs.FrontendStages.Word
