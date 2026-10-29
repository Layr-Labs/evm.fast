import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data315
import InitECandidate.Proofs.WordStages.Source379
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate315_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output315 =
    InitECandidate.Proofs.WordStages.source379 := by
  kernel_rfl
#print axioms translate315_eq
end InitECandidate.Proofs.FrontendStages.Word
