import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data126
import InitECandidate.Proofs.WordStages.Source190
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate126_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output126 =
    InitECandidate.Proofs.WordStages.source190 := by
  kernel_rfl
#print axioms translate126_eq
end InitECandidate.Proofs.FrontendStages.Word
