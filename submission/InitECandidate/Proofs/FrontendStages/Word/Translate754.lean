import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data754
import InitECandidate.Proofs.WordStages.Source818
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate738
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate754_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output754 =
    InitECandidate.Proofs.WordStages.source818 := by
  kernel_rfl
#print axioms translate754_eq
end InitECandidate.Proofs.FrontendStages.Word
