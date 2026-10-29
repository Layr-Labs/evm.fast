import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data310
import InitECandidate.Proofs.WordStages.Source374
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate310_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output310 =
    InitECandidate.Proofs.WordStages.source374 := by
  kernel_rfl
#print axioms translate310_eq
end InitECandidate.Proofs.FrontendStages.Word
