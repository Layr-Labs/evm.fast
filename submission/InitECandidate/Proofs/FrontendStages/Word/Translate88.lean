import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data88
import InitECandidate.Proofs.WordStages.Source152
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate88_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output88 =
    InitECandidate.Proofs.WordStages.source152 := by
  kernel_rfl
#print axioms translate88_eq
end InitECandidate.Proofs.FrontendStages.Word
