import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data682
import InitECandidate.Proofs.WordStages.Source746
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate666
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate682_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output682 =
    InitECandidate.Proofs.WordStages.source746 := by
  kernel_rfl
#print axioms translate682_eq
end InitECandidate.Proofs.FrontendStages.Word
