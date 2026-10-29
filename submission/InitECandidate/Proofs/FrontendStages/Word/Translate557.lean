import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data557
import InitECandidate.Proofs.WordStages.Source621
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate557_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output557 =
    InitECandidate.Proofs.WordStages.source621 := by
  kernel_rfl
#print axioms translate557_eq
end InitECandidate.Proofs.FrontendStages.Word
