import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data577
import InitECandidate.Proofs.WordStages.Source641
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate577_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output577 =
    InitECandidate.Proofs.WordStages.source641 := by
  kernel_rfl
#print axioms translate577_eq
end InitECandidate.Proofs.FrontendStages.Word
