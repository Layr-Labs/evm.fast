import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data627
import InitECandidate.Proofs.WordStages.Source691
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate611
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate627_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output627 =
    InitECandidate.Proofs.WordStages.source691 := by
  kernel_rfl
#print axioms translate627_eq
end InitECandidate.Proofs.FrontendStages.Word
