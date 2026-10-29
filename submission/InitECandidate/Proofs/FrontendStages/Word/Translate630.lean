import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data630
import InitECandidate.Proofs.WordStages.Source694
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate630_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output630 =
    InitECandidate.Proofs.WordStages.source694 := by
  kernel_rfl
#print axioms translate630_eq
end InitECandidate.Proofs.FrontendStages.Word
