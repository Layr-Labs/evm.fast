import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data567
import InitECandidate.Proofs.WordStages.Source631
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate567_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output567 =
    InitECandidate.Proofs.WordStages.source631 := by
  kernel_rfl
#print axioms translate567_eq
end InitECandidate.Proofs.FrontendStages.Word
