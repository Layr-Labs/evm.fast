import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data703
import InitECandidate.Proofs.WordStages.Source767
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate703_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output703 =
    InitECandidate.Proofs.WordStages.source767 := by
  kernel_rfl
#print axioms translate703_eq
end InitECandidate.Proofs.FrontendStages.Word
