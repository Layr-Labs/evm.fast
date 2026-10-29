import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data200
import InitECandidate.Proofs.WordStages.Source264
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate200_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output200 =
    InitECandidate.Proofs.WordStages.source264 := by
  kernel_rfl
#print axioms translate200_eq
end InitECandidate.Proofs.FrontendStages.Word
