import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data647
import InitECandidate.Proofs.WordStages.Source711
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate647_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output647 =
    InitECandidate.Proofs.WordStages.source711 := by
  kernel_rfl
#print axioms translate647_eq
end InitECandidate.Proofs.FrontendStages.Word
