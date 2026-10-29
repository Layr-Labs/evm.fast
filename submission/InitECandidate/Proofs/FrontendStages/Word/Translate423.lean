import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data423
import InitECandidate.Proofs.WordStages.Source487
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate407
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate423_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output423 =
    InitECandidate.Proofs.WordStages.source487 := by
  kernel_rfl
#print axioms translate423_eq
end InitECandidate.Proofs.FrontendStages.Word
