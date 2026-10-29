import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data163
import InitECandidate.Proofs.WordStages.Source227
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate163_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output163 =
    InitECandidate.Proofs.WordStages.source227 := by
  kernel_rfl
#print axioms translate163_eq
end InitECandidate.Proofs.FrontendStages.Word
