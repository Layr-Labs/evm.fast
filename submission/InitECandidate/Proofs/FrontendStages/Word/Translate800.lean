import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data800
import InitECandidate.Proofs.WordStages.Source864
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate784
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate800_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output800 =
    InitECandidate.Proofs.WordStages.source864 := by
  kernel_rfl
#print axioms translate800_eq
end InitECandidate.Proofs.FrontendStages.Word
