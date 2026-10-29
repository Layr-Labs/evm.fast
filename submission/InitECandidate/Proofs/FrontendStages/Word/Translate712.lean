import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data712
import InitECandidate.Proofs.WordStages.Source776
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate712_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output712 =
    InitECandidate.Proofs.WordStages.source776 := by
  kernel_rfl
#print axioms translate712_eq
end InitECandidate.Proofs.FrontendStages.Word
