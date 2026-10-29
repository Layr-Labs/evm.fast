import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data489
import InitECandidate.Proofs.WordStages.Source553
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate489_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output489 =
    InitECandidate.Proofs.WordStages.source553 := by
  kernel_rfl
#print axioms translate489_eq
end InitECandidate.Proofs.FrontendStages.Word
