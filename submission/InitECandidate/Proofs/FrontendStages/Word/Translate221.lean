import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data221
import InitECandidate.Proofs.WordStages.Source285
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate221_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output221 =
    InitECandidate.Proofs.WordStages.source285 := by
  kernel_rfl
#print axioms translate221_eq
end InitECandidate.Proofs.FrontendStages.Word
