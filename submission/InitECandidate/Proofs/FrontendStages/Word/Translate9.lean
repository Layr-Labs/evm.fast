import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data9
import InitECandidate.Proofs.WordStages.Source73
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate9_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output9 =
    InitECandidate.Proofs.WordStages.source73 := by
  kernel_rfl
#print axioms translate9_eq
end InitECandidate.Proofs.FrontendStages.Word
