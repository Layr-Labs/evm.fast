import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data27
import InitECandidate.Proofs.WordStages.Source91
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate11
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate27_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output27 =
    InitECandidate.Proofs.WordStages.source91 := by
  kernel_rfl
#print axioms translate27_eq
end InitECandidate.Proofs.FrontendStages.Word
