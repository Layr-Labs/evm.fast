import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data176
import InitECandidate.Proofs.WordStages.Source240
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate176_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output176 =
    InitECandidate.Proofs.WordStages.source240 := by
  kernel_rfl
#print axioms translate176_eq
end InitECandidate.Proofs.FrontendStages.Word
