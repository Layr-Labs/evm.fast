import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data506
import InitECandidate.Proofs.WordStages.Source570
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate506_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output506 =
    InitECandidate.Proofs.WordStages.source570 := by
  kernel_rfl
#print axioms translate506_eq
end InitECandidate.Proofs.FrontendStages.Word
