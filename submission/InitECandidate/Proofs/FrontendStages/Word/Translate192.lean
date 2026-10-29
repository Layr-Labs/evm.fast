import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data192
import InitECandidate.Proofs.WordStages.Source256
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate192_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output192 =
    InitECandidate.Proofs.WordStages.source256 := by
  kernel_rfl
#print axioms translate192_eq
end InitECandidate.Proofs.FrontendStages.Word
