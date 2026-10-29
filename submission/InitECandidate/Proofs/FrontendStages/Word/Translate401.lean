import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data401
import InitECandidate.Proofs.WordStages.Source465
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate401_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output401 =
    InitECandidate.Proofs.WordStages.source465 := by
  kernel_rfl
#print axioms translate401_eq
end InitECandidate.Proofs.FrontendStages.Word
