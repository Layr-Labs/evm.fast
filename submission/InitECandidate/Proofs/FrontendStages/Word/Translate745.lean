import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data745
import InitECandidate.Proofs.WordStages.Source809
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate745_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output745 =
    InitECandidate.Proofs.WordStages.source809 := by
  kernel_rfl
#print axioms translate745_eq
end InitECandidate.Proofs.FrontendStages.Word
