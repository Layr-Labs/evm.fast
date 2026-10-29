import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data728
import InitECandidate.Proofs.WordStages.Source792
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate728_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output728 =
    InitECandidate.Proofs.WordStages.source792 := by
  kernel_rfl
#print axioms translate728_eq
end InitECandidate.Proofs.FrontendStages.Word
