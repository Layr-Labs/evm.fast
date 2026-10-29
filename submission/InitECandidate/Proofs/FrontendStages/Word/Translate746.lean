import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data746
import InitECandidate.Proofs.WordStages.Source810
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate730
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate746_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output746 =
    InitECandidate.Proofs.WordStages.source810 := by
  kernel_rfl
#print axioms translate746_eq
end InitECandidate.Proofs.FrontendStages.Word
