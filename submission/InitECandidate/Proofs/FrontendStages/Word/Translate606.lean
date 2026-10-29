import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data606
import InitECandidate.Proofs.WordStages.Source670
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate606_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output606 =
    InitECandidate.Proofs.WordStages.source670 := by
  kernel_rfl
#print axioms translate606_eq
end InitECandidate.Proofs.FrontendStages.Word
