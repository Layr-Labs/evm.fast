import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data135
import InitECandidate.Proofs.WordStages.Source199
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate135_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output135 =
    InitECandidate.Proofs.WordStages.source199 := by
  kernel_rfl
#print axioms translate135_eq
end InitECandidate.Proofs.FrontendStages.Word
