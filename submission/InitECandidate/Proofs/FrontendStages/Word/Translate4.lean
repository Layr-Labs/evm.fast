import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data4
import InitECandidate.Proofs.WordStages.Source68
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate4_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output4 =
    InitECandidate.Proofs.WordStages.source68 := by
  kernel_rfl
#print axioms translate4_eq
end InitECandidate.Proofs.FrontendStages.Word
