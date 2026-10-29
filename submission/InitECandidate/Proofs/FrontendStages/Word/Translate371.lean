import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data371
import InitECandidate.Proofs.WordStages.Source435
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate355
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate371_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output371 =
    InitECandidate.Proofs.WordStages.source435 := by
  kernel_rfl
#print axioms translate371_eq
end InitECandidate.Proofs.FrontendStages.Word
