import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data570
import InitECandidate.Proofs.WordStages.Source634
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate570_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output570 =
    InitECandidate.Proofs.WordStages.source634 := by
  kernel_rfl
#print axioms translate570_eq
end InitECandidate.Proofs.FrontendStages.Word
