import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data501
import InitECandidate.Proofs.WordStages.Source565
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate501_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output501 =
    InitECandidate.Proofs.WordStages.source565 := by
  kernel_rfl
#print axioms translate501_eq
end InitECandidate.Proofs.FrontendStages.Word
