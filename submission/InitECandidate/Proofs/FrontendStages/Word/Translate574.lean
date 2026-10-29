import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data574
import InitECandidate.Proofs.WordStages.Source638
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate574_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output574 =
    InitECandidate.Proofs.WordStages.source638 := by
  kernel_rfl
#print axioms translate574_eq
end InitECandidate.Proofs.FrontendStages.Word
