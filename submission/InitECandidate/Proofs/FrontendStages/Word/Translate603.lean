import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data603
import InitECandidate.Proofs.WordStages.Source667
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate603_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output603 =
    InitECandidate.Proofs.WordStages.source667 := by
  kernel_rfl
#print axioms translate603_eq
end InitECandidate.Proofs.FrontendStages.Word
