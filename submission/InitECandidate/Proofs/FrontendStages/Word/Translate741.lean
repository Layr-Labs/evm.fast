import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data741
import InitECandidate.Proofs.WordStages.Source805
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate741_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output741 =
    InitECandidate.Proofs.WordStages.source805 := by
  kernel_rfl
#print axioms translate741_eq
end InitECandidate.Proofs.FrontendStages.Word
