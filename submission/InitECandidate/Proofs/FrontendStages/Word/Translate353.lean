import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data353
import InitECandidate.Proofs.WordStages.Source417
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate353_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output353 =
    InitECandidate.Proofs.WordStages.source417 := by
  kernel_rfl
#print axioms translate353_eq
end InitECandidate.Proofs.FrontendStages.Word
