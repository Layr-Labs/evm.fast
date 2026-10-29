import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data532
import InitECandidate.Proofs.WordStages.Source596
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate532_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output532 =
    InitECandidate.Proofs.WordStages.source596 := by
  kernel_rfl
#print axioms translate532_eq
end InitECandidate.Proofs.FrontendStages.Word
