import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data602
import InitECandidate.Proofs.WordStages.Source666
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate602_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output602 =
    InitECandidate.Proofs.WordStages.source666 := by
  kernel_rfl
#print axioms translate602_eq
end InitECandidate.Proofs.FrontendStages.Word
