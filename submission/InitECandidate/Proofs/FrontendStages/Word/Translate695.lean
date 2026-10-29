import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data695
import InitECandidate.Proofs.WordStages.Source759
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate695_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output695 =
    InitECandidate.Proofs.WordStages.source759 := by
  kernel_rfl
#print axioms translate695_eq
end InitECandidate.Proofs.FrontendStages.Word
