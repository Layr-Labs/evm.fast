import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data475
import InitECandidate.Proofs.WordStages.Source539
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate475_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output475 =
    InitECandidate.Proofs.WordStages.source539 := by
  kernel_rfl
#print axioms translate475_eq
end InitECandidate.Proofs.FrontendStages.Word
