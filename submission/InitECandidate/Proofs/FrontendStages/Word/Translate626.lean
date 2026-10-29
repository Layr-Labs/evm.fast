import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data626
import InitECandidate.Proofs.WordStages.Source690
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate626_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output626 =
    InitECandidate.Proofs.WordStages.source690 := by
  kernel_rfl
#print axioms translate626_eq
end InitECandidate.Proofs.FrontendStages.Word
