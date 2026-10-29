import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data649
import InitECandidate.Proofs.WordStages.Source713
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate633
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate649_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output649 =
    InitECandidate.Proofs.WordStages.source713 := by
  kernel_rfl
#print axioms translate649_eq
end InitECandidate.Proofs.FrontendStages.Word
