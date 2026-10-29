import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data720
import InitECandidate.Proofs.WordStages.Source784
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate720_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output720 =
    InitECandidate.Proofs.WordStages.source784 := by
  kernel_rfl
#print axioms translate720_eq
end InitECandidate.Proofs.FrontendStages.Word
