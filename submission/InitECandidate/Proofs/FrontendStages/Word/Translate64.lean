import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data64
import InitECandidate.Proofs.WordStages.Source128
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate48
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate64_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output64 =
    InitECandidate.Proofs.WordStages.source128 := by
  kernel_rfl
#print axioms translate64_eq
end InitECandidate.Proofs.FrontendStages.Word
