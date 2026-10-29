import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data274
import InitECandidate.Proofs.WordStages.Source338
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate274_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output274 =
    InitECandidate.Proofs.WordStages.source338 := by
  kernel_rfl
#print axioms translate274_eq
end InitECandidate.Proofs.FrontendStages.Word
