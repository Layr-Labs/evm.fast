import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data8
import InitECandidate.Proofs.WordStages.Source72
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate8_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output8 =
    InitECandidate.Proofs.WordStages.source72 := by
  kernel_rfl
#print axioms translate8_eq
end InitECandidate.Proofs.FrontendStages.Word
