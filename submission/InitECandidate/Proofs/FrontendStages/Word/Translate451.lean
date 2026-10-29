import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data451
import InitECandidate.Proofs.WordStages.Source515
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate451_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output451 =
    InitECandidate.Proofs.WordStages.source515 := by
  kernel_rfl
#print axioms translate451_eq
end InitECandidate.Proofs.FrontendStages.Word
