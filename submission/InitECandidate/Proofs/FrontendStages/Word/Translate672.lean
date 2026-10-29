import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data672
import InitECandidate.Proofs.WordStages.Source736
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate672_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output672 =
    InitECandidate.Proofs.WordStages.source736 := by
  kernel_rfl
#print axioms translate672_eq
end InitECandidate.Proofs.FrontendStages.Word
