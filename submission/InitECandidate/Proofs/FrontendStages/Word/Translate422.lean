import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data422
import InitECandidate.Proofs.WordStages.Source486
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate422_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output422 =
    InitECandidate.Proofs.WordStages.source486 := by
  kernel_rfl
#print axioms translate422_eq
end InitECandidate.Proofs.FrontendStages.Word
