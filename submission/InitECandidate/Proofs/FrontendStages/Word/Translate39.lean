import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data39
import InitECandidate.Proofs.WordStages.Source103
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate23
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate39_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output39 =
    InitECandidate.Proofs.WordStages.source103 := by
  kernel_rfl
#print axioms translate39_eq
end InitECandidate.Proofs.FrontendStages.Word
