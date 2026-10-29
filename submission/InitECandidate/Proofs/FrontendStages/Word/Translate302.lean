import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data302
import InitECandidate.Proofs.WordStages.Source366
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate302_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output302 =
    InitECandidate.Proofs.WordStages.source366 := by
  kernel_rfl
#print axioms translate302_eq
end InitECandidate.Proofs.FrontendStages.Word
