import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data515
import InitECandidate.Proofs.WordStages.Source579
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate515_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output515 =
    InitECandidate.Proofs.WordStages.source579 := by
  kernel_rfl
#print axioms translate515_eq
end InitECandidate.Proofs.FrontendStages.Word
