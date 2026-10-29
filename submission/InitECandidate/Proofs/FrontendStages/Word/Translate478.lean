import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data478
import InitECandidate.Proofs.WordStages.Source542
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate478_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output478 =
    InitECandidate.Proofs.WordStages.source542 := by
  kernel_rfl
#print axioms translate478_eq
end InitECandidate.Proofs.FrontendStages.Word
