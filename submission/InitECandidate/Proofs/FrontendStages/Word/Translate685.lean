import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data685
import InitECandidate.Proofs.WordStages.Source749
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate685_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output685 =
    InitECandidate.Proofs.WordStages.source749 := by
  kernel_rfl
#print axioms translate685_eq
end InitECandidate.Proofs.FrontendStages.Word
