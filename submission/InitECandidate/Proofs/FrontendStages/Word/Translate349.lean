import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data349
import InitECandidate.Proofs.WordStages.Source413
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate349_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output349 =
    InitECandidate.Proofs.WordStages.source413 := by
  kernel_rfl
#print axioms translate349_eq
end InitECandidate.Proofs.FrontendStages.Word
