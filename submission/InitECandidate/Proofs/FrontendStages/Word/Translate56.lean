import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data56
import InitECandidate.Proofs.WordStages.Source120
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate40
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate56_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output56 =
    InitECandidate.Proofs.WordStages.source120 := by
  kernel_rfl
#print axioms translate56_eq
end InitECandidate.Proofs.FrontendStages.Word
