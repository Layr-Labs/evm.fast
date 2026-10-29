import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data613
import InitECandidate.Proofs.WordStages.Source677
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate597
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate613_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output613 =
    InitECandidate.Proofs.WordStages.source677 := by
  kernel_rfl
#print axioms translate613_eq
end InitECandidate.Proofs.FrontendStages.Word
