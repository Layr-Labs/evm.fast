import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data648
import InitECandidate.Proofs.WordStages.Source712
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate632
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate648_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output648 =
    InitECandidate.Proofs.WordStages.source712 := by
  kernel_rfl
#print axioms translate648_eq
end InitECandidate.Proofs.FrontendStages.Word
