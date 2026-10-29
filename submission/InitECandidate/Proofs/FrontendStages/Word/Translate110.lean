import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data110
import InitECandidate.Proofs.WordStages.Source174
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate110_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output110 =
    InitECandidate.Proofs.WordStages.source174 := by
  kernel_rfl
#print axioms translate110_eq
end InitECandidate.Proofs.FrontendStages.Word
