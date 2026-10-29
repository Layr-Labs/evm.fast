import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data545
import InitECandidate.Proofs.WordStages.Source609
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate545_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output545 =
    InitECandidate.Proofs.WordStages.source609 := by
  kernel_rfl
#print axioms translate545_eq
end InitECandidate.Proofs.FrontendStages.Word
