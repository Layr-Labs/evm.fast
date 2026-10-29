import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data573
import InitECandidate.Proofs.WordStages.Source637
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate573_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output573 =
    InitECandidate.Proofs.WordStages.source637 := by
  kernel_rfl
#print axioms translate573_eq
end InitECandidate.Proofs.FrontendStages.Word
