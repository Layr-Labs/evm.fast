import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data245
import InitECandidate.Proofs.WordStages.Source309
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate229
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate245_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output245 =
    InitECandidate.Proofs.WordStages.source309 := by
  kernel_rfl
#print axioms translate245_eq
end InitECandidate.Proofs.FrontendStages.Word
