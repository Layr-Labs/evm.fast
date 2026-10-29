import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data213
import InitECandidate.Proofs.WordStages.Source277
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate213_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output213 =
    InitECandidate.Proofs.WordStages.source277 := by
  kernel_rfl
#print axioms translate213_eq
end InitECandidate.Proofs.FrontendStages.Word
