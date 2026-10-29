import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data469
import InitECandidate.Proofs.WordStages.Source533
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate469_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output469 =
    InitECandidate.Proofs.WordStages.source533 := by
  kernel_rfl
#print axioms translate469_eq
end InitECandidate.Proofs.FrontendStages.Word
