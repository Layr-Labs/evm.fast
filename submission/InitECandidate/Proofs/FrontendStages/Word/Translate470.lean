import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data470
import InitECandidate.Proofs.WordStages.Source534
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate470_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output470 =
    InitECandidate.Proofs.WordStages.source534 := by
  kernel_rfl
#print axioms translate470_eq
end InitECandidate.Proofs.FrontendStages.Word
