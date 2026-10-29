import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data753
import InitECandidate.Proofs.WordStages.Source817
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate753_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output753 =
    InitECandidate.Proofs.WordStages.source817 := by
  kernel_rfl
#print axioms translate753_eq
end InitECandidate.Proofs.FrontendStages.Word
