import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data355
import InitECandidate.Proofs.WordStages.Source419
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate339
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate355_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output355 =
    InitECandidate.Proofs.WordStages.source419 := by
  kernel_rfl
#print axioms translate355_eq
end InitECandidate.Proofs.FrontendStages.Word
