import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data340
import InitECandidate.Proofs.WordStages.Source404
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate340_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output340 =
    InitECandidate.Proofs.WordStages.source404 := by
  kernel_rfl
#print axioms translate340_eq
end InitECandidate.Proofs.FrontendStages.Word
