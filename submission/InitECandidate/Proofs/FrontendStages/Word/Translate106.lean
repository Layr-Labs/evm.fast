import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data106
import InitECandidate.Proofs.WordStages.Source170
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate90
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate106_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output106 =
    InitECandidate.Proofs.WordStages.source170 := by
  kernel_rfl
#print axioms translate106_eq
end InitECandidate.Proofs.FrontendStages.Word
