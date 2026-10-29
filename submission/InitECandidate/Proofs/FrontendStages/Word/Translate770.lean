import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data770
import InitECandidate.Proofs.WordStages.Source834
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate754
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate770_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output770 =
    InitECandidate.Proofs.WordStages.source834 := by
  kernel_rfl
#print axioms translate770_eq
end InitECandidate.Proofs.FrontendStages.Word
