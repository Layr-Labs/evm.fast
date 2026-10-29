import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data667
import InitECandidate.Proofs.WordStages.Source731
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate667_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output667 =
    InitECandidate.Proofs.WordStages.source731 := by
  kernel_rfl
#print axioms translate667_eq
end InitECandidate.Proofs.FrontendStages.Word
