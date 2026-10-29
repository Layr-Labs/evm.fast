import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data471
import InitECandidate.Proofs.WordStages.Source535
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate471_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output471 =
    InitECandidate.Proofs.WordStages.source535 := by
  kernel_rfl
#print axioms translate471_eq
end InitECandidate.Proofs.FrontendStages.Word
