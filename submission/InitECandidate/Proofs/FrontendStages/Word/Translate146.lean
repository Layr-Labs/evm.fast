import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data146
import InitECandidate.Proofs.WordStages.Source210
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate146_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output146 =
    InitECandidate.Proofs.WordStages.source210 := by
  kernel_rfl
#print axioms translate146_eq
end InitECandidate.Proofs.FrontendStages.Word
