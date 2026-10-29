import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data502
import InitECandidate.Proofs.WordStages.Source566
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate502_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output502 =
    InitECandidate.Proofs.WordStages.source566 := by
  kernel_rfl
#print axioms translate502_eq
end InitECandidate.Proofs.FrontendStages.Word
