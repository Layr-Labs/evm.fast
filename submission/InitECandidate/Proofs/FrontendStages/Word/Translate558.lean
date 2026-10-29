import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data558
import InitECandidate.Proofs.WordStages.Source622
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate558_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output558 =
    InitECandidate.Proofs.WordStages.source622 := by
  kernel_rfl
#print axioms translate558_eq
end InitECandidate.Proofs.FrontendStages.Word
