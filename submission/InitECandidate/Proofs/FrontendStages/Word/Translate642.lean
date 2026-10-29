import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data642
import InitECandidate.Proofs.WordStages.Source706
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate642_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output642 =
    InitECandidate.Proofs.WordStages.source706 := by
  kernel_rfl
#print axioms translate642_eq
end InitECandidate.Proofs.FrontendStages.Word
