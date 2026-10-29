import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data343
import InitECandidate.Proofs.WordStages.Source407
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate343_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output343 =
    InitECandidate.Proofs.WordStages.source407 := by
  kernel_rfl
#print axioms translate343_eq
end InitECandidate.Proofs.FrontendStages.Word
