import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data640
import InitECandidate.Proofs.WordStages.Source704
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate640_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output640 =
    InitECandidate.Proofs.WordStages.source704 := by
  kernel_rfl
#print axioms translate640_eq
end InitECandidate.Proofs.FrontendStages.Word
