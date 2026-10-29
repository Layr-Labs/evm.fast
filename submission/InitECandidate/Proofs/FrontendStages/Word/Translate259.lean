import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data259
import InitECandidate.Proofs.WordStages.Source323
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate259_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output259 =
    InitECandidate.Proofs.WordStages.source323 := by
  kernel_rfl
#print axioms translate259_eq
end InitECandidate.Proofs.FrontendStages.Word
