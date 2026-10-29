import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data419
import InitECandidate.Proofs.WordStages.Source483
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate419_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output419 =
    InitECandidate.Proofs.WordStages.source483 := by
  kernel_rfl
#print axioms translate419_eq
end InitECandidate.Proofs.FrontendStages.Word
