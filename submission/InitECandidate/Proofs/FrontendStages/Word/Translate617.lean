import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data617
import InitECandidate.Proofs.WordStages.Source681
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate617_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output617 =
    InitECandidate.Proofs.WordStages.source681 := by
  kernel_rfl
#print axioms translate617_eq
end InitECandidate.Proofs.FrontendStages.Word
