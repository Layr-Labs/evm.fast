import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data582
import InitECandidate.Proofs.WordStages.Source646
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate582_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output582 =
    InitECandidate.Proofs.WordStages.source646 := by
  kernel_rfl
#print axioms translate582_eq
end InitECandidate.Proofs.FrontendStages.Word
