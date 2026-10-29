import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data11
import InitECandidate.Proofs.WordStages.Source75
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate11_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output11 =
    InitECandidate.Proofs.WordStages.source75 := by
  kernel_rfl
#print axioms translate11_eq
end InitECandidate.Proofs.FrontendStages.Word
