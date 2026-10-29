import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data209
import InitECandidate.Proofs.WordStages.Source273
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate193
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate209_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output209 =
    InitECandidate.Proofs.WordStages.source273 := by
  kernel_rfl
#print axioms translate209_eq
end InitECandidate.Proofs.FrontendStages.Word
