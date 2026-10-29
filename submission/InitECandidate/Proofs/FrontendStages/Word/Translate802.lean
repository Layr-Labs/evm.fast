import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data802
import InitECandidate.Proofs.WordStages.Source866
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate786
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate802_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output802 =
    InitECandidate.Proofs.WordStages.source866 := by
  kernel_rfl
#print axioms translate802_eq
end InitECandidate.Proofs.FrontendStages.Word
