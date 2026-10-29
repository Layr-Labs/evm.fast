import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data758
import InitECandidate.Proofs.WordStages.Source822
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate758_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output758 =
    InitECandidate.Proofs.WordStages.source822 := by
  kernel_rfl
#print axioms translate758_eq
end InitECandidate.Proofs.FrontendStages.Word
