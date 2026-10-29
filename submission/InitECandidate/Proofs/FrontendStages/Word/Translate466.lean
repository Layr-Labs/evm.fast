import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data466
import InitECandidate.Proofs.WordStages.Source530
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate466_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output466 =
    InitECandidate.Proofs.WordStages.source530 := by
  kernel_rfl
#print axioms translate466_eq
end InitECandidate.Proofs.FrontendStages.Word
