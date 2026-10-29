import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data527
import InitECandidate.Proofs.WordStages.Source591
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate527_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output527 =
    InitECandidate.Proofs.WordStages.source591 := by
  kernel_rfl
#print axioms translate527_eq
end InitECandidate.Proofs.FrontendStages.Word
