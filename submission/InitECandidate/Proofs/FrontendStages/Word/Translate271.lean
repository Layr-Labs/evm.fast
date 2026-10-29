import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data271
import InitECandidate.Proofs.WordStages.Source335
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate271_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output271 =
    InitECandidate.Proofs.WordStages.source335 := by
  kernel_rfl
#print axioms translate271_eq
end InitECandidate.Proofs.FrontendStages.Word
