import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data538
import InitECandidate.Proofs.WordStages.Source602
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate538_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output538 =
    InitECandidate.Proofs.WordStages.source602 := by
  kernel_rfl
#print axioms translate538_eq
end InitECandidate.Proofs.FrontendStages.Word
