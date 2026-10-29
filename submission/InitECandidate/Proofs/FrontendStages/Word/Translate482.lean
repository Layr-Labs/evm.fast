import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data482
import InitECandidate.Proofs.WordStages.Source546
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate482_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output482 =
    InitECandidate.Proofs.WordStages.source546 := by
  kernel_rfl
#print axioms translate482_eq
end InitECandidate.Proofs.FrontendStages.Word
