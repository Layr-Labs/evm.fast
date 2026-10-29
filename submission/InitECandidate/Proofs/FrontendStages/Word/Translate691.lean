import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data691
import InitECandidate.Proofs.WordStages.Source755
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate691_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output691 =
    InitECandidate.Proofs.WordStages.source755 := by
  kernel_rfl
#print axioms translate691_eq
end InitECandidate.Proofs.FrontendStages.Word
