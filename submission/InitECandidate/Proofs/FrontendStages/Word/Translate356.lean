import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data356
import InitECandidate.Proofs.WordStages.Source420
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate356_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output356 =
    InitECandidate.Proofs.WordStages.source420 := by
  kernel_rfl
#print axioms translate356_eq
end InitECandidate.Proofs.FrontendStages.Word
