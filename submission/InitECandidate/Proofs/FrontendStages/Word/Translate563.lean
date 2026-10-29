import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data563
import InitECandidate.Proofs.WordStages.Source627
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate563_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output563 =
    InitECandidate.Proofs.WordStages.source627 := by
  kernel_rfl
#print axioms translate563_eq
end InitECandidate.Proofs.FrontendStages.Word
