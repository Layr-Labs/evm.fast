import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data436
import InitECandidate.Proofs.WordStages.Source500
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate436_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output436 =
    InitECandidate.Proofs.WordStages.source500 := by
  kernel_rfl
#print axioms translate436_eq
end InitECandidate.Proofs.FrontendStages.Word
