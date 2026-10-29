import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data796
import InitECandidate.Proofs.WordStages.Source860
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate796_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output796 =
    InitECandidate.Proofs.WordStages.source860 := by
  kernel_rfl
#print axioms translate796_eq
end InitECandidate.Proofs.FrontendStages.Word
