import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data15
import InitECandidate.Proofs.WordStages.Source79
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate15_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output15 =
    InitECandidate.Proofs.WordStages.source79 := by
  kernel_rfl
#print axioms translate15_eq
end InitECandidate.Proofs.FrontendStages.Word
