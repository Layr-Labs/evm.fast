import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data531
import InitECandidate.Proofs.WordStages.Source595
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate531_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output531 =
    InitECandidate.Proofs.WordStages.source595 := by
  kernel_rfl
#print axioms translate531_eq
end InitECandidate.Proofs.FrontendStages.Word
