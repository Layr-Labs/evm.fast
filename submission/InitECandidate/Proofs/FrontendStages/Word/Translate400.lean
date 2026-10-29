import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data400
import InitECandidate.Proofs.WordStages.Source464
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate400_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output400 =
    InitECandidate.Proofs.WordStages.source464 := by
  kernel_rfl
#print axioms translate400_eq
end InitECandidate.Proofs.FrontendStages.Word
