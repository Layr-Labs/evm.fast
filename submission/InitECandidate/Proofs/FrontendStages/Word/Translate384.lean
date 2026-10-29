import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data384
import InitECandidate.Proofs.WordStages.Source448
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate384_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output384 =
    InitECandidate.Proofs.WordStages.source448 := by
  kernel_rfl
#print axioms translate384_eq
end InitECandidate.Proofs.FrontendStages.Word
