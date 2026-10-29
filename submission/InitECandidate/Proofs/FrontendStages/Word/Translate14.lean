import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data14
import InitECandidate.Proofs.WordStages.Source78
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate14_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output14 =
    InitECandidate.Proofs.WordStages.source78 := by
  kernel_rfl
#print axioms translate14_eq
end InitECandidate.Proofs.FrontendStages.Word
