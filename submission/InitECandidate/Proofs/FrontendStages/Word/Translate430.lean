import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data430
import InitECandidate.Proofs.WordStages.Source494
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate430_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output430 =
    InitECandidate.Proofs.WordStages.source494 := by
  kernel_rfl
#print axioms translate430_eq
end InitECandidate.Proofs.FrontendStages.Word
