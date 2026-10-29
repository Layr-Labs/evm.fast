import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data420
import InitECandidate.Proofs.WordStages.Source484
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate420_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output420 =
    InitECandidate.Proofs.WordStages.source484 := by
  kernel_rfl
#print axioms translate420_eq
end InitECandidate.Proofs.FrontendStages.Word
