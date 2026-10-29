import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data599
import InitECandidate.Proofs.WordStages.Source663
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate599_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output599 =
    InitECandidate.Proofs.WordStages.source663 := by
  kernel_rfl
#print axioms translate599_eq
end InitECandidate.Proofs.FrontendStages.Word
