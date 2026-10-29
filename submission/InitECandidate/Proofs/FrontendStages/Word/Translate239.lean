import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data239
import InitECandidate.Proofs.WordStages.Source303
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate239_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output239 =
    InitECandidate.Proofs.WordStages.source303 := by
  kernel_rfl
#print axioms translate239_eq
end InitECandidate.Proofs.FrontendStages.Word
