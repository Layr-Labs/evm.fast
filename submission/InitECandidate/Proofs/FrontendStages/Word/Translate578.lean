import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data578
import InitECandidate.Proofs.WordStages.Source642
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate578_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output578 =
    InitECandidate.Proofs.WordStages.source642 := by
  kernel_rfl
#print axioms translate578_eq
end InitECandidate.Proofs.FrontendStages.Word
