import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data467
import InitECandidate.Proofs.WordStages.Source531
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate467_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output467 =
    InitECandidate.Proofs.WordStages.source531 := by
  kernel_rfl
#print axioms translate467_eq
end InitECandidate.Proofs.FrontendStages.Word
