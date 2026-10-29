import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data298
import InitECandidate.Proofs.WordStages.Source362
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate298_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output298 =
    InitECandidate.Proofs.WordStages.source362 := by
  kernel_rfl
#print axioms translate298_eq
end InitECandidate.Proofs.FrontendStages.Word
