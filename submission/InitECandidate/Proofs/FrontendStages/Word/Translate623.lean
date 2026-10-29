import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data623
import InitECandidate.Proofs.WordStages.Source687
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate623_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output623 =
    InitECandidate.Proofs.WordStages.source687 := by
  kernel_rfl
#print axioms translate623_eq
end InitECandidate.Proofs.FrontendStages.Word
