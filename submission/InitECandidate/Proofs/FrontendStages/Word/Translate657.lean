import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data657
import InitECandidate.Proofs.WordStages.Source721
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate657_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output657 =
    InitECandidate.Proofs.WordStages.source721 := by
  kernel_rfl
#print axioms translate657_eq
end InitECandidate.Proofs.FrontendStages.Word
