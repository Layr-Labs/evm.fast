import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data109
import InitECandidate.Proofs.WordStages.Source173
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate109_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output109 =
    InitECandidate.Proofs.WordStages.source173 := by
  kernel_rfl
#print axioms translate109_eq
end InitECandidate.Proofs.FrontendStages.Word
