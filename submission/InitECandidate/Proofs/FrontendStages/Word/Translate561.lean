import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data561
import InitECandidate.Proofs.WordStages.Source625
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate561_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output561 =
    InitECandidate.Proofs.WordStages.source625 := by
  kernel_rfl
#print axioms translate561_eq
end InitECandidate.Proofs.FrontendStages.Word
