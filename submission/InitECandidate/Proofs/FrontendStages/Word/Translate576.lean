import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data576
import InitECandidate.Proofs.WordStages.Source640
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate576_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output576 =
    InitECandidate.Proofs.WordStages.source640 := by
  kernel_rfl
#print axioms translate576_eq
end InitECandidate.Proofs.FrontendStages.Word
