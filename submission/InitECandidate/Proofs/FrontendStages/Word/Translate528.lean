import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data528
import InitECandidate.Proofs.WordStages.Source592
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate528_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output528 =
    InitECandidate.Proofs.WordStages.source592 := by
  kernel_rfl
#print axioms translate528_eq
end InitECandidate.Proofs.FrontendStages.Word
