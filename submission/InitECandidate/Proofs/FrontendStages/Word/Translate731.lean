import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data731
import InitECandidate.Proofs.WordStages.Source795
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate731_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output731 =
    InitECandidate.Proofs.WordStages.source795 := by
  kernel_rfl
#print axioms translate731_eq
end InitECandidate.Proofs.FrontendStages.Word
