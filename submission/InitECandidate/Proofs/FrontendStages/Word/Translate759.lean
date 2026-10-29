import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data759
import InitECandidate.Proofs.WordStages.Source823
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate759_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output759 =
    InitECandidate.Proofs.WordStages.source823 := by
  kernel_rfl
#print axioms translate759_eq
end InitECandidate.Proofs.FrontendStages.Word
