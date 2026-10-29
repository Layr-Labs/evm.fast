import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data519
import InitECandidate.Proofs.WordStages.Source583
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate519_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output519 =
    InitECandidate.Proofs.WordStages.source583 := by
  kernel_rfl
#print axioms translate519_eq
end InitECandidate.Proofs.FrontendStages.Word
