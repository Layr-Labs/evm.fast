import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data233
import InitECandidate.Proofs.WordStages.Source297
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate233_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output233 =
    InitECandidate.Proofs.WordStages.source297 := by
  kernel_rfl
#print axioms translate233_eq
end InitECandidate.Proofs.FrontendStages.Word
