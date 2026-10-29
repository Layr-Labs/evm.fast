import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data787
import InitECandidate.Proofs.WordStages.Source851
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate787_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output787 =
    InitECandidate.Proofs.WordStages.source851 := by
  kernel_rfl
#print axioms translate787_eq
end InitECandidate.Proofs.FrontendStages.Word
