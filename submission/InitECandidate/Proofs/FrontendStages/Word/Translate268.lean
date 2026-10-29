import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data268
import InitECandidate.Proofs.WordStages.Source332
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate268_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output268 =
    InitECandidate.Proofs.WordStages.source332 := by
  kernel_rfl
#print axioms translate268_eq
end InitECandidate.Proofs.FrontendStages.Word
