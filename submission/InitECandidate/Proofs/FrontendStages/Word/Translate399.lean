import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data399
import InitECandidate.Proofs.WordStages.Source463
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate399_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output399 =
    InitECandidate.Proofs.WordStages.source463 := by
  kernel_rfl
#print axioms translate399_eq
end InitECandidate.Proofs.FrontendStages.Word
