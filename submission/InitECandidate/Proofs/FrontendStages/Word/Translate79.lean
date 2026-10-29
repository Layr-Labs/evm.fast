import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data79
import InitECandidate.Proofs.WordStages.Source143
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate63
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate79_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output79 =
    InitECandidate.Proofs.WordStages.source143 := by
  kernel_rfl
#print axioms translate79_eq
end InitECandidate.Proofs.FrontendStages.Word
