import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data679
import InitECandidate.Proofs.WordStages.Source743
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate679_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output679 =
    InitECandidate.Proofs.WordStages.source743 := by
  kernel_rfl
#print axioms translate679_eq
end InitECandidate.Proofs.FrontendStages.Word
