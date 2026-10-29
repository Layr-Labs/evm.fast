import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data762
import InitECandidate.Proofs.WordStages.Source826
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate746
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate762_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output762 =
    InitECandidate.Proofs.WordStages.source826 := by
  kernel_rfl
#print axioms translate762_eq
end InitECandidate.Proofs.FrontendStages.Word
