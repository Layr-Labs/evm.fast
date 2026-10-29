import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data486
import InitECandidate.Proofs.WordStages.Source550
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate486_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output486 =
    InitECandidate.Proofs.WordStages.source550 := by
  kernel_rfl
#print axioms translate486_eq
end InitECandidate.Proofs.FrontendStages.Word
