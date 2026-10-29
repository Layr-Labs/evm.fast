import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data292
import InitECandidate.Proofs.WordStages.Source356
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate292_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output292 =
    InitECandidate.Proofs.WordStages.source356 := by
  kernel_rfl
#print axioms translate292_eq
end InitECandidate.Proofs.FrontendStages.Word
