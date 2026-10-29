import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data440
import InitECandidate.Proofs.WordStages.Source504
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate440_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output440 =
    InitECandidate.Proofs.WordStages.source504 := by
  kernel_rfl
#print axioms translate440_eq
end InitECandidate.Proofs.FrontendStages.Word
