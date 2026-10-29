import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data690
import InitECandidate.Proofs.WordStages.Source754
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate690_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output690 =
    InitECandidate.Proofs.WordStages.source754 := by
  kernel_rfl
#print axioms translate690_eq
end InitECandidate.Proofs.FrontendStages.Word
