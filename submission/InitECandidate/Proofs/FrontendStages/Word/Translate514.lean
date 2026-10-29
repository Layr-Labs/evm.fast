import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data514
import InitECandidate.Proofs.WordStages.Source578
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate514_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output514 =
    InitECandidate.Proofs.WordStages.source578 := by
  kernel_rfl
#print axioms translate514_eq
end InitECandidate.Proofs.FrontendStages.Word
