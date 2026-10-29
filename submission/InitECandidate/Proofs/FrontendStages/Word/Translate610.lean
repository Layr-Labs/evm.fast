import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data610
import InitECandidate.Proofs.WordStages.Source674
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate610_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output610 =
    InitECandidate.Proofs.WordStages.source674 := by
  kernel_rfl
#print axioms translate610_eq
end InitECandidate.Proofs.FrontendStages.Word
