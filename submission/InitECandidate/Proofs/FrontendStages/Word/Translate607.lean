import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data607
import InitECandidate.Proofs.WordStages.Source671
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate607_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output607 =
    InitECandidate.Proofs.WordStages.source671 := by
  kernel_rfl
#print axioms translate607_eq
end InitECandidate.Proofs.FrontendStages.Word
