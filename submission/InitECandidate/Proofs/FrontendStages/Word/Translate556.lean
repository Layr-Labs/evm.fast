import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data556
import InitECandidate.Proofs.WordStages.Source620
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate556_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output556 =
    InitECandidate.Proofs.WordStages.source620 := by
  kernel_rfl
#print axioms translate556_eq
end InitECandidate.Proofs.FrontendStages.Word
