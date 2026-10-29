import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data326
import InitECandidate.Proofs.WordStages.Source390
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate326_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output326 =
    InitECandidate.Proofs.WordStages.source390 := by
  kernel_rfl
#print axioms translate326_eq
end InitECandidate.Proofs.FrontendStages.Word
