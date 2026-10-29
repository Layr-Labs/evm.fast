import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data547
import InitECandidate.Proofs.WordStages.Source611
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate547_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output547 =
    InitECandidate.Proofs.WordStages.source611 := by
  kernel_rfl
#print axioms translate547_eq
end InitECandidate.Proofs.FrontendStages.Word
