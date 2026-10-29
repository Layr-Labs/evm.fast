import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data32
import InitECandidate.Proofs.WordStages.Source96
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate16
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate32_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output32 =
    InitECandidate.Proofs.WordStages.source96 := by
  kernel_rfl
#print axioms translate32_eq
end InitECandidate.Proofs.FrontendStages.Word
