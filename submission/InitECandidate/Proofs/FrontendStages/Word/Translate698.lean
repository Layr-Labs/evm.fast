import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data698
import InitECandidate.Proofs.WordStages.Source762
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate682
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate698_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output698 =
    InitECandidate.Proofs.WordStages.source762 := by
  kernel_rfl
#print axioms translate698_eq
end InitECandidate.Proofs.FrontendStages.Word
