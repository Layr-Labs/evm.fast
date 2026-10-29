import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data524
import InitECandidate.Proofs.WordStages.Source588
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate524_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output524 =
    InitECandidate.Proofs.WordStages.source588 := by
  kernel_rfl
#print axioms translate524_eq
end InitECandidate.Proofs.FrontendStages.Word
