import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data157
import InitECandidate.Proofs.WordStages.Source221
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate157_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output157 =
    InitECandidate.Proofs.WordStages.source221 := by
  kernel_rfl
#print axioms translate157_eq
end InitECandidate.Proofs.FrontendStages.Word
