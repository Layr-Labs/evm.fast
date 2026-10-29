import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data379
import InitECandidate.Proofs.WordStages.Source443
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate379_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output379 =
    InitECandidate.Proofs.WordStages.source443 := by
  kernel_rfl
#print axioms translate379_eq
end InitECandidate.Proofs.FrontendStages.Word
