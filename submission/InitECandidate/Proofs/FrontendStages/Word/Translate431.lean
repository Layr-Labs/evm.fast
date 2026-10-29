import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data431
import InitECandidate.Proofs.WordStages.Source495
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate431_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output431 =
    InitECandidate.Proofs.WordStages.source495 := by
  kernel_rfl
#print axioms translate431_eq
end InitECandidate.Proofs.FrontendStages.Word
