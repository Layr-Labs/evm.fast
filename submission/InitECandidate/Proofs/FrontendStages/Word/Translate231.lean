import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data231
import InitECandidate.Proofs.WordStages.Source295
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate231_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output231 =
    InitECandidate.Proofs.WordStages.source295 := by
  kernel_rfl
#print axioms translate231_eq
end InitECandidate.Proofs.FrontendStages.Word
