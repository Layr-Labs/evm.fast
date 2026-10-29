import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data721
import InitECandidate.Proofs.WordStages.Source785
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate721_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output721 =
    InitECandidate.Proofs.WordStages.source785 := by
  kernel_rfl
#print axioms translate721_eq
end InitECandidate.Proofs.FrontendStages.Word
