import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data780
import InitECandidate.Proofs.WordStages.Source844
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate780_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output780 =
    InitECandidate.Proofs.WordStages.source844 := by
  kernel_rfl
#print axioms translate780_eq
end InitECandidate.Proofs.FrontendStages.Word
