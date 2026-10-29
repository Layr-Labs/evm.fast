import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data129
import InitECandidate.Proofs.WordStages.Source193
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate129_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output129 =
    InitECandidate.Proofs.WordStages.source193 := by
  kernel_rfl
#print axioms translate129_eq
end InitECandidate.Proofs.FrontendStages.Word
