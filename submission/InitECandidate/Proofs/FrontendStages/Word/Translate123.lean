import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data123
import InitECandidate.Proofs.WordStages.Source187
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate123_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output123 =
    InitECandidate.Proofs.WordStages.source187 := by
  kernel_rfl
#print axioms translate123_eq
end InitECandidate.Proofs.FrontendStages.Word
