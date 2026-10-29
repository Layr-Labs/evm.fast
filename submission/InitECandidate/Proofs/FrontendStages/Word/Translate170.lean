import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data170
import InitECandidate.Proofs.WordStages.Source234
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate170_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output170 =
    InitECandidate.Proofs.WordStages.source234 := by
  kernel_rfl
#print axioms translate170_eq
end InitECandidate.Proofs.FrontendStages.Word
