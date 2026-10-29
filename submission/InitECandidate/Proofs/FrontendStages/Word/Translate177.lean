import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data177
import InitECandidate.Proofs.WordStages.Source241
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate177_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output177 =
    InitECandidate.Proofs.WordStages.source241 := by
  kernel_rfl
#print axioms translate177_eq
end InitECandidate.Proofs.FrontendStages.Word
