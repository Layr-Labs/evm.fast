import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data749
import InitECandidate.Proofs.WordStages.Source813
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate733
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate749_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output749 =
    InitECandidate.Proofs.WordStages.source813 := by
  kernel_rfl
#print axioms translate749_eq
end InitECandidate.Proofs.FrontendStages.Word
