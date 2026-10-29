import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data162
import InitECandidate.Proofs.WordStages.Source226
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate146
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate162_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output162 =
    InitECandidate.Proofs.WordStages.source226 := by
  kernel_rfl
#print axioms translate162_eq
end InitECandidate.Proofs.FrontendStages.Word
