import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data334
import InitECandidate.Proofs.WordStages.Source398
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate334_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output334 =
    InitECandidate.Proofs.WordStages.source398 := by
  kernel_rfl
#print axioms translate334_eq
end InitECandidate.Proofs.FrontendStages.Word
