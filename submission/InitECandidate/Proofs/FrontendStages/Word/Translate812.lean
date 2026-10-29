import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data812
import InitECandidate.Proofs.WordStages.Source876
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate812_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output812 =
    InitECandidate.Proofs.WordStages.source876 := by
  kernel_rfl
#print axioms translate812_eq
end InitECandidate.Proofs.FrontendStages.Word
