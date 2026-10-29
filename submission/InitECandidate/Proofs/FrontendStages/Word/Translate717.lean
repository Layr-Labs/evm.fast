import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data717
import InitECandidate.Proofs.WordStages.Source781
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate717_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output717 =
    InitECandidate.Proofs.WordStages.source781 := by
  kernel_rfl
#print axioms translate717_eq
end InitECandidate.Proofs.FrontendStages.Word
