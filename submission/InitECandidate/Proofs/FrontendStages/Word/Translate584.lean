import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data584
import InitECandidate.Proofs.WordStages.Source648
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate584_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output584 =
    InitECandidate.Proofs.WordStages.source648 := by
  kernel_rfl
#print axioms translate584_eq
end InitECandidate.Proofs.FrontendStages.Word
