import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data197
import InitECandidate.Proofs.WordStages.Source261
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate197_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output197 =
    InitECandidate.Proofs.WordStages.source261 := by
  kernel_rfl
#print axioms translate197_eq
end InitECandidate.Proofs.FrontendStages.Word
