import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data223
import InitECandidate.Proofs.WordStages.Source287
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate223_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output223 =
    InitECandidate.Proofs.WordStages.source287 := by
  kernel_rfl
#print axioms translate223_eq
end InitECandidate.Proofs.FrontendStages.Word
