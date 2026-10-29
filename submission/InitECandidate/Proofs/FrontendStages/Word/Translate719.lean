import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data719
import InitECandidate.Proofs.WordStages.Source783
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate703
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate719_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output719 =
    InitECandidate.Proofs.WordStages.source783 := by
  kernel_rfl
#print axioms translate719_eq
end InitECandidate.Proofs.FrontendStages.Word
