import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data678
import InitECandidate.Proofs.WordStages.Source742
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate678_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output678 =
    InitECandidate.Proofs.WordStages.source742 := by
  kernel_rfl
#print axioms translate678_eq
end InitECandidate.Proofs.FrontendStages.Word
