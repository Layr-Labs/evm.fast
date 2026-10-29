import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data615
import InitECandidate.Proofs.WordStages.Source679
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate615_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output615 =
    InitECandidate.Proofs.WordStages.source679 := by
  kernel_rfl
#print axioms translate615_eq
end InitECandidate.Proofs.FrontendStages.Word
