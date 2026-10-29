import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data252
import InitECandidate.Proofs.WordStages.Source316
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate252_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output252 =
    InitECandidate.Proofs.WordStages.source316 := by
  kernel_rfl
#print axioms translate252_eq
end InitECandidate.Proofs.FrontendStages.Word
