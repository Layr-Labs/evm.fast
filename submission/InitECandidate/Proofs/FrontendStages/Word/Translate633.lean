import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data633
import InitECandidate.Proofs.WordStages.Source697
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate617
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate633_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output633 =
    InitECandidate.Proofs.WordStages.source697 := by
  kernel_rfl
#print axioms translate633_eq
end InitECandidate.Proofs.FrontendStages.Word
