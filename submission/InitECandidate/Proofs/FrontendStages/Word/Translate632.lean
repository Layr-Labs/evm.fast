import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data632
import InitECandidate.Proofs.WordStages.Source696
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate632_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output632 =
    InitECandidate.Proofs.WordStages.source696 := by
  kernel_rfl
#print axioms translate632_eq
end InitECandidate.Proofs.FrontendStages.Word
