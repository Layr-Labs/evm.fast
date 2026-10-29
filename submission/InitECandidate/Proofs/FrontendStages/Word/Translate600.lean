import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data600
import InitECandidate.Proofs.WordStages.Source664
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate600_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output600 =
    InitECandidate.Proofs.WordStages.source664 := by
  kernel_rfl
#print axioms translate600_eq
end InitECandidate.Proofs.FrontendStages.Word
