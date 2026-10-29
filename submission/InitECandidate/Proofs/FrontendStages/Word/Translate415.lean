import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data415
import InitECandidate.Proofs.WordStages.Source479
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate415_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output415 =
    InitECandidate.Proofs.WordStages.source479 := by
  kernel_rfl
#print axioms translate415_eq
end InitECandidate.Proofs.FrontendStages.Word
