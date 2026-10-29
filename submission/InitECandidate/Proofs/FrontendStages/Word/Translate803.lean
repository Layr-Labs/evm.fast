import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data803
import InitECandidate.Proofs.WordStages.Source867
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate803_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output803 =
    InitECandidate.Proofs.WordStages.source867 := by
  kernel_rfl
#print axioms translate803_eq
end InitECandidate.Proofs.FrontendStages.Word
