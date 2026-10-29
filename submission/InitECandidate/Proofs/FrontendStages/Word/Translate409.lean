import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data409
import InitECandidate.Proofs.WordStages.Source473
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate409_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output409 =
    InitECandidate.Proofs.WordStages.source473 := by
  kernel_rfl
#print axioms translate409_eq
end InitECandidate.Proofs.FrontendStages.Word
