import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data447
import InitECandidate.Proofs.WordStages.Source511
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate431
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate447_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output447 =
    InitECandidate.Proofs.WordStages.source511 := by
  kernel_rfl
#print axioms translate447_eq
end InitECandidate.Proofs.FrontendStages.Word
