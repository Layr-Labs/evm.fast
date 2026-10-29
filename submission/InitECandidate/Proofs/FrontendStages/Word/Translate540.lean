import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data540
import InitECandidate.Proofs.WordStages.Source604
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate540_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output540 =
    InitECandidate.Proofs.WordStages.source604 := by
  kernel_rfl
#print axioms translate540_eq
end InitECandidate.Proofs.FrontendStages.Word
