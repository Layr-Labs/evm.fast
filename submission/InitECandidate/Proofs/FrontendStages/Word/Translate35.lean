import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data35
import InitECandidate.Proofs.WordStages.Source99
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate19
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate35_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output35 =
    InitECandidate.Proofs.WordStages.source99 := by
  kernel_rfl
#print axioms translate35_eq
end InitECandidate.Proofs.FrontendStages.Word
