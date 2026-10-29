import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data792
import InitECandidate.Proofs.WordStages.Source856
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate792_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output792 =
    InitECandidate.Proofs.WordStages.source856 := by
  kernel_rfl
#print axioms translate792_eq
end InitECandidate.Proofs.FrontendStages.Word
