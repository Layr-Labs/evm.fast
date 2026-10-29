import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data789
import InitECandidate.Proofs.WordStages.Source853
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate789_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output789 =
    InitECandidate.Proofs.WordStages.source853 := by
  kernel_rfl
#print axioms translate789_eq
end InitECandidate.Proofs.FrontendStages.Word
