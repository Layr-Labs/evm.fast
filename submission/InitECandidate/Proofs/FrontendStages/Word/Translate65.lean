import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data65
import InitECandidate.Proofs.WordStages.Source129
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate49
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate65_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output65 =
    InitECandidate.Proofs.WordStages.source129 := by
  kernel_rfl
#print axioms translate65_eq
end InitECandidate.Proofs.FrontendStages.Word
