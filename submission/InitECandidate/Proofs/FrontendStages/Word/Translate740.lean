import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data740
import InitECandidate.Proofs.WordStages.Source804
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate724
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate740_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output740 =
    InitECandidate.Proofs.WordStages.source804 := by
  kernel_rfl
#print axioms translate740_eq
end InitECandidate.Proofs.FrontendStages.Word
