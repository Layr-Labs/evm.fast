import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data136
import InitECandidate.Proofs.WordStages.Source200
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate136_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output136 =
    InitECandidate.Proofs.WordStages.source200 := by
  kernel_rfl
#print axioms translate136_eq
end InitECandidate.Proofs.FrontendStages.Word
