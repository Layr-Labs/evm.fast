import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data726
import InitECandidate.Proofs.WordStages.Source790
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate726_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output726 =
    InitECandidate.Proofs.WordStages.source790 := by
  kernel_rfl
#print axioms translate726_eq
end InitECandidate.Proofs.FrontendStages.Word
