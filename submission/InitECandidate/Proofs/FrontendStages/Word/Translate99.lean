import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data99
import InitECandidate.Proofs.WordStages.Source163
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate99_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output99 =
    InitECandidate.Proofs.WordStages.source163 := by
  kernel_rfl
#print axioms translate99_eq
end InitECandidate.Proofs.FrontendStages.Word
