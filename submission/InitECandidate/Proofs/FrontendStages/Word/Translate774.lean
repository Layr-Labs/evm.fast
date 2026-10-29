import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data774
import InitECandidate.Proofs.WordStages.Source838
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate774_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output774 =
    InitECandidate.Proofs.WordStages.source838 := by
  kernel_rfl
#print axioms translate774_eq
end InitECandidate.Proofs.FrontendStages.Word
