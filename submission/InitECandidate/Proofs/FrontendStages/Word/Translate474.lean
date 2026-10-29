import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data474
import InitECandidate.Proofs.WordStages.Source538
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate474_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output474 =
    InitECandidate.Proofs.WordStages.source538 := by
  kernel_rfl
#print axioms translate474_eq
end InitECandidate.Proofs.FrontendStages.Word
