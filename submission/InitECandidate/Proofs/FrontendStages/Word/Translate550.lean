import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data550
import InitECandidate.Proofs.WordStages.Source614
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate550_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output550 =
    InitECandidate.Proofs.WordStages.source614 := by
  kernel_rfl
#print axioms translate550_eq
end InitECandidate.Proofs.FrontendStages.Word
