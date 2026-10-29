import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data465
import InitECandidate.Proofs.WordStages.Source529
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate465_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output465 =
    InitECandidate.Proofs.WordStages.source529 := by
  kernel_rfl
#print axioms translate465_eq
end InitECandidate.Proofs.FrontendStages.Word
