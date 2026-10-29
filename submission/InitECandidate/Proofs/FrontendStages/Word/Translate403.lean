import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data403
import InitECandidate.Proofs.WordStages.Source467
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate403_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output403 =
    InitECandidate.Proofs.WordStages.source467 := by
  kernel_rfl
#print axioms translate403_eq
end InitECandidate.Proofs.FrontendStages.Word
