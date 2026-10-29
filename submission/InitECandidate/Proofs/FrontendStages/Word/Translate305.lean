import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data305
import InitECandidate.Proofs.WordStages.Source369
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate305_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output305 =
    InitECandidate.Proofs.WordStages.source369 := by
  kernel_rfl
#print axioms translate305_eq
end InitECandidate.Proofs.FrontendStages.Word
