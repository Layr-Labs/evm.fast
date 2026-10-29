import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data727
import InitECandidate.Proofs.WordStages.Source791
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate711
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate727_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output727 =
    InitECandidate.Proofs.WordStages.source791 := by
  kernel_rfl
#print axioms translate727_eq
end InitECandidate.Proofs.FrontendStages.Word
