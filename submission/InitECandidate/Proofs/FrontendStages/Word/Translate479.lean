import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data479
import InitECandidate.Proofs.WordStages.Source543
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate479_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output479 =
    InitECandidate.Proofs.WordStages.source543 := by
  kernel_rfl
#print axioms translate479_eq
end InitECandidate.Proofs.FrontendStages.Word
