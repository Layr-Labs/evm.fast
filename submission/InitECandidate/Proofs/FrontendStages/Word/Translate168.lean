import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data168
import InitECandidate.Proofs.WordStages.Source232
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate168_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output168 =
    InitECandidate.Proofs.WordStages.source232 := by
  kernel_rfl
#print axioms translate168_eq
end InitECandidate.Proofs.FrontendStages.Word
