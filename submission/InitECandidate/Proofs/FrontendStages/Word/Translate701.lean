import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data701
import InitECandidate.Proofs.WordStages.Source765
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate701_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output701 =
    InitECandidate.Proofs.WordStages.source765 := by
  kernel_rfl
#print axioms translate701_eq
end InitECandidate.Proofs.FrontendStages.Word
