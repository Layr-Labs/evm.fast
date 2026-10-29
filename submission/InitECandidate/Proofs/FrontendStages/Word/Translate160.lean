import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data160
import InitECandidate.Proofs.WordStages.Source224
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate160_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output160 =
    InitECandidate.Proofs.WordStages.source224 := by
  kernel_rfl
#print axioms translate160_eq
end InitECandidate.Proofs.FrontendStages.Word
