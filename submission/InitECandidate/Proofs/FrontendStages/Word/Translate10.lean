import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data10
import InitECandidate.Proofs.WordStages.Source74
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate10_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output10 =
    InitECandidate.Proofs.WordStages.source74 := by
  kernel_rfl
#print axioms translate10_eq
end InitECandidate.Proofs.FrontendStages.Word
