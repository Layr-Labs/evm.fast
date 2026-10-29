import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data705
import InitECandidate.Proofs.WordStages.Source769
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate705_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output705 =
    InitECandidate.Proofs.WordStages.source769 := by
  kernel_rfl
#print axioms translate705_eq
end InitECandidate.Proofs.FrontendStages.Word
