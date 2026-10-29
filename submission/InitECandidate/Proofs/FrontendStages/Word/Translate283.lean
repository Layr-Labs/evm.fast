import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data283
import InitECandidate.Proofs.WordStages.Source347
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate283_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output283 =
    InitECandidate.Proofs.WordStages.source347 := by
  kernel_rfl
#print axioms translate283_eq
end InitECandidate.Proofs.FrontendStages.Word
