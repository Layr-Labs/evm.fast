import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data397
import InitECandidate.Proofs.WordStages.Source461
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate397_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output397 =
    InitECandidate.Proofs.WordStages.source461 := by
  kernel_rfl
#print axioms translate397_eq
end InitECandidate.Proofs.FrontendStages.Word
