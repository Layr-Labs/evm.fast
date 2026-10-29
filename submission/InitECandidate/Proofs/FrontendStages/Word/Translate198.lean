import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data198
import InitECandidate.Proofs.WordStages.Source262
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate198_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output198 =
    InitECandidate.Proofs.WordStages.source262 := by
  kernel_rfl
#print axioms translate198_eq
end InitECandidate.Proofs.FrontendStages.Word
