import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data243
import InitECandidate.Proofs.WordStages.Source307
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate243_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output243 =
    InitECandidate.Proofs.WordStages.source307 := by
  kernel_rfl
#print axioms translate243_eq
end InitECandidate.Proofs.FrontendStages.Word
