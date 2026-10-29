import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data365
import InitECandidate.Proofs.WordStages.Source429
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate365_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output365 =
    InitECandidate.Proofs.WordStages.source429 := by
  kernel_rfl
#print axioms translate365_eq
end InitECandidate.Proofs.FrontendStages.Word
