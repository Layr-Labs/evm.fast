import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data204
import InitECandidate.Proofs.WordStages.Source268
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate204_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output204 =
    InitECandidate.Proofs.WordStages.source268 := by
  kernel_rfl
#print axioms translate204_eq
end InitECandidate.Proofs.FrontendStages.Word
