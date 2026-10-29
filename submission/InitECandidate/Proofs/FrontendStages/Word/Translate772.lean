import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data772
import InitECandidate.Proofs.WordStages.Source836
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate772_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output772 =
    InitECandidate.Proofs.WordStages.source836 := by
  kernel_rfl
#print axioms translate772_eq
end InitECandidate.Proofs.FrontendStages.Word
