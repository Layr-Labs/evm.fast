import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data145
import InitECandidate.Proofs.WordStages.Source209
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate145_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output145 =
    InitECandidate.Proofs.WordStages.source209 := by
  kernel_rfl
#print axioms translate145_eq
end InitECandidate.Proofs.FrontendStages.Word
