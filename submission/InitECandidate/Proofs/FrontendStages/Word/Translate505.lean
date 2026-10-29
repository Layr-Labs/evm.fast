import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data505
import InitECandidate.Proofs.WordStages.Source569
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate505_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output505 =
    InitECandidate.Proofs.WordStages.source569 := by
  kernel_rfl
#print axioms translate505_eq
end InitECandidate.Proofs.FrontendStages.Word
