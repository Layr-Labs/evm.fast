import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data49
import InitECandidate.Proofs.WordStages.Source113
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate33
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate49_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output49 =
    InitECandidate.Proofs.WordStages.source113 := by
  kernel_rfl
#print axioms translate49_eq
end InitECandidate.Proofs.FrontendStages.Word
