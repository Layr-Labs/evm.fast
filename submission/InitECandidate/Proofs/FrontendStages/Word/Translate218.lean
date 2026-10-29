import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data218
import InitECandidate.Proofs.WordStages.Source282
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate218_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output218 =
    InitECandidate.Proofs.WordStages.source282 := by
  kernel_rfl
#print axioms translate218_eq
end InitECandidate.Proofs.FrontendStages.Word
