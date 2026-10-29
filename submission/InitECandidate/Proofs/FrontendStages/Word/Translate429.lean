import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data429
import InitECandidate.Proofs.WordStages.Source493
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate429_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output429 =
    InitECandidate.Proofs.WordStages.source493 := by
  kernel_rfl
#print axioms translate429_eq
end InitECandidate.Proofs.FrontendStages.Word
