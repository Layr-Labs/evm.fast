import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data683
import InitECandidate.Proofs.WordStages.Source747
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate667
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate683_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output683 =
    InitECandidate.Proofs.WordStages.source747 := by
  kernel_rfl
#print axioms translate683_eq
end InitECandidate.Proofs.FrontendStages.Word
