import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data687
import InitECandidate.Proofs.WordStages.Source751
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate687_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output687 =
    InitECandidate.Proofs.WordStages.source751 := by
  kernel_rfl
#print axioms translate687_eq
end InitECandidate.Proofs.FrontendStages.Word
