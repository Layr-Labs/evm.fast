import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data297
import InitECandidate.Proofs.WordStages.Source361
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate281
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate297_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output297 =
    InitECandidate.Proofs.WordStages.source361 := by
  kernel_rfl
#print axioms translate297_eq
end InitECandidate.Proofs.FrontendStages.Word
