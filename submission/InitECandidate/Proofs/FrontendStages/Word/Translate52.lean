import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data52
import InitECandidate.Proofs.WordStages.Source116
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate36
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate52_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output52 =
    InitECandidate.Proofs.WordStages.source116 := by
  kernel_rfl
#print axioms translate52_eq
end InitECandidate.Proofs.FrontendStages.Word
