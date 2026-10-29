import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data133
import InitECandidate.Proofs.WordStages.Source197
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate133_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output133 =
    InitECandidate.Proofs.WordStages.source197 := by
  kernel_rfl
#print axioms translate133_eq
end InitECandidate.Proofs.FrontendStages.Word
