import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data554
import InitECandidate.Proofs.WordStages.Source618
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate554_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output554 =
    InitECandidate.Proofs.WordStages.source618 := by
  kernel_rfl
#print axioms translate554_eq
end InitECandidate.Proofs.FrontendStages.Word
