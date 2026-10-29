import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data324
import InitECandidate.Proofs.WordStages.Source388
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate308
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate324_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output324 =
    InitECandidate.Proofs.WordStages.source388 := by
  kernel_rfl
#print axioms translate324_eq
end InitECandidate.Proofs.FrontendStages.Word
