import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data498
import InitECandidate.Proofs.WordStages.Source562
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate498_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output498 =
    InitECandidate.Proofs.WordStages.source562 := by
  kernel_rfl
#print axioms translate498_eq
end InitECandidate.Proofs.FrontendStages.Word
