import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data631
import InitECandidate.Proofs.WordStages.Source695
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate631_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output631 =
    InitECandidate.Proofs.WordStages.source695 := by
  kernel_rfl
#print axioms translate631_eq
end InitECandidate.Proofs.FrontendStages.Word
