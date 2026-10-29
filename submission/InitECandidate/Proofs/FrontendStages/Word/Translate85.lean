import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data85
import InitECandidate.Proofs.WordStages.Source149
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate69
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate85_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output85 =
    InitECandidate.Proofs.WordStages.source149 := by
  kernel_rfl
#print axioms translate85_eq
end InitECandidate.Proofs.FrontendStages.Word
