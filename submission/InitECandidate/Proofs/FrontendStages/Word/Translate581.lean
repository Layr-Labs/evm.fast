import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data581
import InitECandidate.Proofs.WordStages.Source645
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate581_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output581 =
    InitECandidate.Proofs.WordStages.source645 := by
  kernel_rfl
#print axioms translate581_eq
end InitECandidate.Proofs.FrontendStages.Word
