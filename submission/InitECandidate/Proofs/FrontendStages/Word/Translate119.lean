import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data119
import InitECandidate.Proofs.WordStages.Source183
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate103
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate119_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output119 =
    InitECandidate.Proofs.WordStages.source183 := by
  kernel_rfl
#print axioms translate119_eq
end InitECandidate.Proofs.FrontendStages.Word
