import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data665
import InitECandidate.Proofs.WordStages.Source729
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate665_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output665 =
    InitECandidate.Proofs.WordStages.source729 := by
  kernel_rfl
#print axioms translate665_eq
end InitECandidate.Proofs.FrontendStages.Word
