import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data782
import InitECandidate.Proofs.WordStages.Source846
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate766
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate782_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output782 =
    InitECandidate.Proofs.WordStages.source846 := by
  kernel_rfl
#print axioms translate782_eq
end InitECandidate.Proofs.FrontendStages.Word
