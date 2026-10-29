import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data92
import InitECandidate.Proofs.WordStages.Source156
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate92_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output92 =
    InitECandidate.Proofs.WordStages.source156 := by
  kernel_rfl
#print axioms translate92_eq
end InitECandidate.Proofs.FrontendStages.Word
