import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data539
import InitECandidate.Proofs.WordStages.Source603
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate539_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output539 =
    InitECandidate.Proofs.WordStages.source603 := by
  kernel_rfl
#print axioms translate539_eq
end InitECandidate.Proofs.FrontendStages.Word
