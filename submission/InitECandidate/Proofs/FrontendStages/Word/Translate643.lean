import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data643
import InitECandidate.Proofs.WordStages.Source707
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate643_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output643 =
    InitECandidate.Proofs.WordStages.source707 := by
  kernel_rfl
#print axioms translate643_eq
end InitECandidate.Proofs.FrontendStages.Word
