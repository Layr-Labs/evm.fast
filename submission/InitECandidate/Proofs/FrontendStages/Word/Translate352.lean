import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data352
import InitECandidate.Proofs.WordStages.Source416
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate352_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output352 =
    InitECandidate.Proofs.WordStages.source416 := by
  kernel_rfl
#print axioms translate352_eq
end InitECandidate.Proofs.FrontendStages.Word
