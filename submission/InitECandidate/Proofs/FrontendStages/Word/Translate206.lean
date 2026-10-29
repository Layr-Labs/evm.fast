import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data206
import InitECandidate.Proofs.WordStages.Source270
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate206_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output206 =
    InitECandidate.Proofs.WordStages.source270 := by
  kernel_rfl
#print axioms translate206_eq
end InitECandidate.Proofs.FrontendStages.Word
