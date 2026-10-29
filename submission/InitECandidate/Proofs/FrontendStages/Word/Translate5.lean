import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data5
import InitECandidate.Proofs.WordStages.Source69
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate5_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output5 =
    InitECandidate.Proofs.WordStages.source69 := by
  kernel_rfl
#print axioms translate5_eq
end InitECandidate.Proofs.FrontendStages.Word
