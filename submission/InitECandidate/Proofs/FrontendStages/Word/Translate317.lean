import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data317
import InitECandidate.Proofs.WordStages.Source381
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate317_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output317 =
    InitECandidate.Proofs.WordStages.source381 := by
  kernel_rfl
#print axioms translate317_eq
end InitECandidate.Proofs.FrontendStages.Word
