import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data595
import InitECandidate.Proofs.WordStages.Source659
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate595_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output595 =
    InitECandidate.Proofs.WordStages.source659 := by
  kernel_rfl
#print axioms translate595_eq
end InitECandidate.Proofs.FrontendStages.Word
