import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data490
import InitECandidate.Proofs.WordStages.Source554
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate490_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output490 =
    InitECandidate.Proofs.WordStages.source554 := by
  kernel_rfl
#print axioms translate490_eq
end InitECandidate.Proofs.FrontendStages.Word
