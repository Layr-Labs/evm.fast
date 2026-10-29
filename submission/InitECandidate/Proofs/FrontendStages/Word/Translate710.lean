import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data710
import InitECandidate.Proofs.WordStages.Source774
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate694
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate710_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output710 =
    InitECandidate.Proofs.WordStages.source774 := by
  kernel_rfl
#print axioms translate710_eq
end InitECandidate.Proofs.FrontendStages.Word
