import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data518
import InitECandidate.Proofs.WordStages.Source582
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate518_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output518 =
    InitECandidate.Proofs.WordStages.source582 := by
  kernel_rfl
#print axioms translate518_eq
end InitECandidate.Proofs.FrontendStages.Word
