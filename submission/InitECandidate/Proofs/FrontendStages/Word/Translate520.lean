import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data520
import InitECandidate.Proofs.WordStages.Source584
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate520_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output520 =
    InitECandidate.Proofs.WordStages.source584 := by
  kernel_rfl
#print axioms translate520_eq
end InitECandidate.Proofs.FrontendStages.Word
