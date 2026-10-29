import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data499
import InitECandidate.Proofs.WordStages.Source563
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate499_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output499 =
    InitECandidate.Proofs.WordStages.source563 := by
  kernel_rfl
#print axioms translate499_eq
end InitECandidate.Proofs.FrontendStages.Word
