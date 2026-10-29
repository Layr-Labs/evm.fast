import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data641
import InitECandidate.Proofs.WordStages.Source705
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate641_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output641 =
    InitECandidate.Proofs.WordStages.source705 := by
  kernel_rfl
#print axioms translate641_eq
end InitECandidate.Proofs.FrontendStages.Word
