import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data402
import InitECandidate.Proofs.WordStages.Source466
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate402_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output402 =
    InitECandidate.Proofs.WordStages.source466 := by
  kernel_rfl
#print axioms translate402_eq
end InitECandidate.Proofs.FrontendStages.Word
