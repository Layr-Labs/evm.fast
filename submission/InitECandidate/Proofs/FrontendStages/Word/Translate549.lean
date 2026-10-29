import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data549
import InitECandidate.Proofs.WordStages.Source613
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate549_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output549 =
    InitECandidate.Proofs.WordStages.source613 := by
  kernel_rfl
#print axioms translate549_eq
end InitECandidate.Proofs.FrontendStages.Word
