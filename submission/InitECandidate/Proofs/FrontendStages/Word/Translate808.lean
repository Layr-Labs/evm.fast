import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data808
import InitECandidate.Proofs.WordStages.Source872
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate792
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate808_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output808 =
    InitECandidate.Proofs.WordStages.source872 := by
  kernel_rfl
#print axioms translate808_eq
end InitECandidate.Proofs.FrontendStages.Word
