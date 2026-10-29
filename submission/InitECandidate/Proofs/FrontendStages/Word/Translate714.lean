import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data714
import InitECandidate.Proofs.WordStages.Source778
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate714_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output714 =
    InitECandidate.Proofs.WordStages.source778 := by
  kernel_rfl
#print axioms translate714_eq
end InitECandidate.Proofs.FrontendStages.Word
