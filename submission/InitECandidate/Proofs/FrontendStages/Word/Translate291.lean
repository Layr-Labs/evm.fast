import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data291
import InitECandidate.Proofs.WordStages.Source355
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate291_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output291 =
    InitECandidate.Proofs.WordStages.source355 := by
  kernel_rfl
#print axioms translate291_eq
end InitECandidate.Proofs.FrontendStages.Word
