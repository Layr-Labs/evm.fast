import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data444
import InitECandidate.Proofs.WordStages.Source508
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate444_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output444 =
    InitECandidate.Proofs.WordStages.source508 := by
  kernel_rfl
#print axioms translate444_eq
end InitECandidate.Proofs.FrontendStages.Word
