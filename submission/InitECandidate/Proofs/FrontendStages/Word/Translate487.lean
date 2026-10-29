import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data487
import InitECandidate.Proofs.WordStages.Source551
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate487_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output487 =
    InitECandidate.Proofs.WordStages.source551 := by
  kernel_rfl
#print axioms translate487_eq
end InitECandidate.Proofs.FrontendStages.Word
