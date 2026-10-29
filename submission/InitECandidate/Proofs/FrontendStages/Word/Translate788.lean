import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data788
import InitECandidate.Proofs.WordStages.Source852
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate772
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate788_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output788 =
    InitECandidate.Proofs.WordStages.source852 := by
  kernel_rfl
#print axioms translate788_eq
end InitECandidate.Proofs.FrontendStages.Word
