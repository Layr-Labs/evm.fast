import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data362
import InitECandidate.Proofs.WordStages.Source426
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate362_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output362 =
    InitECandidate.Proofs.WordStages.source426 := by
  kernel_rfl
#print axioms translate362_eq
end InitECandidate.Proofs.FrontendStages.Word
