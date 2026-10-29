import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data138
import InitECandidate.Proofs.WordStages.Source202
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate138_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output138 =
    InitECandidate.Proofs.WordStages.source202 := by
  kernel_rfl
#print axioms translate138_eq
end InitECandidate.Proofs.FrontendStages.Word
