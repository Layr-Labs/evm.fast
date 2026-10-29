import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data585
import InitECandidate.Proofs.WordStages.Source649
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate585_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output585 =
    InitECandidate.Proofs.WordStages.source649 := by
  kernel_rfl
#print axioms translate585_eq
end InitECandidate.Proofs.FrontendStages.Word
