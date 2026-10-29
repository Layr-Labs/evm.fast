import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data102
import InitECandidate.Proofs.WordStages.Source166
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate86
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate102_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output102 =
    InitECandidate.Proofs.WordStages.source166 := by
  kernel_rfl
#print axioms translate102_eq
end InitECandidate.Proofs.FrontendStages.Word
