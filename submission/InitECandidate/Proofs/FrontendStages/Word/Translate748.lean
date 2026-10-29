import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data748
import InitECandidate.Proofs.WordStages.Source812
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate748_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output748 =
    InitECandidate.Proofs.WordStages.source812 := by
  kernel_rfl
#print axioms translate748_eq
end InitECandidate.Proofs.FrontendStages.Word
