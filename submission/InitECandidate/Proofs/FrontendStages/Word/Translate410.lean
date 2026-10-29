import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data410
import InitECandidate.Proofs.WordStages.Source474
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate410_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output410 =
    InitECandidate.Proofs.WordStages.source474 := by
  kernel_rfl
#print axioms translate410_eq
end InitECandidate.Proofs.FrontendStages.Word
