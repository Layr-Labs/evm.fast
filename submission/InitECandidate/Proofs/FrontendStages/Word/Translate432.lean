import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data432
import InitECandidate.Proofs.WordStages.Source496
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate432_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output432 =
    InitECandidate.Proofs.WordStages.source496 := by
  kernel_rfl
#print axioms translate432_eq
end InitECandidate.Proofs.FrontendStages.Word
