import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data98
import InitECandidate.Proofs.WordStages.Source162
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate98_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output98 =
    InitECandidate.Proofs.WordStages.source162 := by
  kernel_rfl
#print axioms translate98_eq
end InitECandidate.Proofs.FrontendStages.Word
