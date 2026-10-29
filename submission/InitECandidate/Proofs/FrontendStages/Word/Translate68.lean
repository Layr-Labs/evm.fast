import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data68
import InitECandidate.Proofs.WordStages.Source132
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate52
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate68_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output68 =
    InitECandidate.Proofs.WordStages.source132 := by
  kernel_rfl
#print axioms translate68_eq
end InitECandidate.Proofs.FrontendStages.Word
