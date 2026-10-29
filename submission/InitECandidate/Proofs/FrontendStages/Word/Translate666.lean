import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data666
import InitECandidate.Proofs.WordStages.Source730
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate666_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output666 =
    InitECandidate.Proofs.WordStages.source730 := by
  kernel_rfl
#print axioms translate666_eq
end InitECandidate.Proofs.FrontendStages.Word
