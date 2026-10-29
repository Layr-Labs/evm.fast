import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data713
import InitECandidate.Proofs.WordStages.Source777
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate697
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate713_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output713 =
    InitECandidate.Proofs.WordStages.source777 := by
  kernel_rfl
#print axioms translate713_eq
end InitECandidate.Proofs.FrontendStages.Word
