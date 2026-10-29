import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data454
import InitECandidate.Proofs.WordStages.Source518
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate454_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output454 =
    InitECandidate.Proofs.WordStages.source518 := by
  kernel_rfl
#print axioms translate454_eq
end InitECandidate.Proofs.FrontendStages.Word
