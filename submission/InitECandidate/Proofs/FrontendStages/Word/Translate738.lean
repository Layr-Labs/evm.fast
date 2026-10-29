import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data738
import InitECandidate.Proofs.WordStages.Source802
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate738_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output738 =
    InitECandidate.Proofs.WordStages.source802 := by
  kernel_rfl
#print axioms translate738_eq
end InitECandidate.Proofs.FrontendStages.Word
