import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data438
import InitECandidate.Proofs.WordStages.Source502
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate438_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output438 =
    InitECandidate.Proofs.WordStages.source502 := by
  kernel_rfl
#print axioms translate438_eq
end InitECandidate.Proofs.FrontendStages.Word
