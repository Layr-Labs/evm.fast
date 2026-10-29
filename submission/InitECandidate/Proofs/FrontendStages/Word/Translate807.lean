import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data807
import InitECandidate.Proofs.WordStages.Source871
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate807_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output807 =
    InitECandidate.Proofs.WordStages.source871 := by
  kernel_rfl
#print axioms translate807_eq
end InitECandidate.Proofs.FrontendStages.Word
