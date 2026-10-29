import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data811
import InitECandidate.Proofs.WordStages.Source875
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate795
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate811_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output811 =
    InitECandidate.Proofs.WordStages.source875 := by
  kernel_rfl
#print axioms translate811_eq
end InitECandidate.Proofs.FrontendStages.Word
