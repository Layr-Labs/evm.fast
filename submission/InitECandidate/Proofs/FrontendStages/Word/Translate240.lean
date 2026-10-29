import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data240
import InitECandidate.Proofs.WordStages.Source304
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate240_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output240 =
    InitECandidate.Proofs.WordStages.source304 := by
  kernel_rfl
#print axioms translate240_eq
end InitECandidate.Proofs.FrontendStages.Word
