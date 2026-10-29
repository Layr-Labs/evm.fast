import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data76
import InitECandidate.Proofs.WordStages.Source140
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate60
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate76_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output76 =
    InitECandidate.Proofs.WordStages.source140 := by
  kernel_rfl
#print axioms translate76_eq
end InitECandidate.Proofs.FrontendStages.Word
