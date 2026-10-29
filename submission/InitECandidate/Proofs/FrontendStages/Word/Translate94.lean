import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data94
import InitECandidate.Proofs.WordStages.Source158
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate94_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output94 =
    InitECandidate.Proofs.WordStages.source158 := by
  kernel_rfl
#print axioms translate94_eq
end InitECandidate.Proofs.FrontendStages.Word
