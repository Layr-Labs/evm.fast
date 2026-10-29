import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data377
import InitECandidate.Proofs.WordStages.Source441
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate377_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output377 =
    InitECandidate.Proofs.WordStages.source441 := by
  kernel_rfl
#print axioms translate377_eq
end InitECandidate.Proofs.FrontendStages.Word
