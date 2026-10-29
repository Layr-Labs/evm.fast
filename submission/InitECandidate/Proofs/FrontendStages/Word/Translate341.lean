import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data341
import InitECandidate.Proofs.WordStages.Source405
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate341_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output341 =
    InitECandidate.Proofs.WordStages.source405 := by
  kernel_rfl
#print axioms translate341_eq
end InitECandidate.Proofs.FrontendStages.Word
