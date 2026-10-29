import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data217
import InitECandidate.Proofs.WordStages.Source281
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate217_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output217 =
    InitECandidate.Proofs.WordStages.source281 := by
  kernel_rfl
#print axioms translate217_eq
end InitECandidate.Proofs.FrontendStages.Word
