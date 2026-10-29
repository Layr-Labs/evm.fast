import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data287
import InitECandidate.Proofs.WordStages.Source351
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate287_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output287 =
    InitECandidate.Proofs.WordStages.source351 := by
  kernel_rfl
#print axioms translate287_eq
end InitECandidate.Proofs.FrontendStages.Word
