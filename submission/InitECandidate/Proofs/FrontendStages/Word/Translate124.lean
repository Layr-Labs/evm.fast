import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data124
import InitECandidate.Proofs.WordStages.Source188
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate124_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output124 =
    InitECandidate.Proofs.WordStages.source188 := by
  kernel_rfl
#print axioms translate124_eq
end InitECandidate.Proofs.FrontendStages.Word
