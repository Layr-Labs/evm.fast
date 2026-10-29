import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data140
import InitECandidate.Proofs.WordStages.Source204
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate140_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output140 =
    InitECandidate.Proofs.WordStages.source204 := by
  kernel_rfl
#print axioms translate140_eq
end InitECandidate.Proofs.FrontendStages.Word
