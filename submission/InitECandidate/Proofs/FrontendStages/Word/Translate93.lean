import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data93
import InitECandidate.Proofs.WordStages.Source157
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate93_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output93 =
    InitECandidate.Proofs.WordStages.source157 := by
  kernel_rfl
#print axioms translate93_eq
end InitECandidate.Proofs.FrontendStages.Word
