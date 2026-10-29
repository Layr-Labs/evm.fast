import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data590
import InitECandidate.Proofs.WordStages.Source654
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate590_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output590 =
    InitECandidate.Proofs.WordStages.source654 := by
  kernel_rfl
#print axioms translate590_eq
end InitECandidate.Proofs.FrontendStages.Word
