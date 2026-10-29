import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data437
import InitECandidate.Proofs.WordStages.Source501
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate437_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output437 =
    InitECandidate.Proofs.WordStages.source501 := by
  kernel_rfl
#print axioms translate437_eq
end InitECandidate.Proofs.FrontendStages.Word
