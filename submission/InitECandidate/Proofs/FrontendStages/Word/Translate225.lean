import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data225
import InitECandidate.Proofs.WordStages.Source289
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate225_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output225 =
    InitECandidate.Proofs.WordStages.source289 := by
  kernel_rfl
#print axioms translate225_eq
end InitECandidate.Proofs.FrontendStages.Word
