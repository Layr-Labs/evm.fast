import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data798
import InitECandidate.Proofs.WordStages.Source862
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate798_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output798 =
    InitECandidate.Proofs.WordStages.source862 := by
  kernel_rfl
#print axioms translate798_eq
end InitECandidate.Proofs.FrontendStages.Word
