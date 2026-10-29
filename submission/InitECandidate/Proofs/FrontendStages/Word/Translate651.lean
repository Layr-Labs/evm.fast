import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data651
import InitECandidate.Proofs.WordStages.Source715
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate651_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output651 =
    InitECandidate.Proofs.WordStages.source715 := by
  kernel_rfl
#print axioms translate651_eq
end InitECandidate.Proofs.FrontendStages.Word
