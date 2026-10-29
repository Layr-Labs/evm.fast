import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data211
import InitECandidate.Proofs.WordStages.Source275
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate211_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output211 =
    InitECandidate.Proofs.WordStages.source275 := by
  kernel_rfl
#print axioms translate211_eq
end InitECandidate.Proofs.FrontendStages.Word
