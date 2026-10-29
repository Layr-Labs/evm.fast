import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data1
import InitECandidate.Proofs.WordStages.Source65
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate1_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output1 =
    InitECandidate.Proofs.WordStages.source65 := by
  kernel_rfl
#print axioms translate1_eq
end InitECandidate.Proofs.FrontendStages.Word
