import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data629
import InitECandidate.Proofs.WordStages.Source693
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate629_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output629 =
    InitECandidate.Proofs.WordStages.source693 := by
  kernel_rfl
#print axioms translate629_eq
end InitECandidate.Proofs.FrontendStages.Word
