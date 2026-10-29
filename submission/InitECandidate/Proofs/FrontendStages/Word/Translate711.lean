import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data711
import InitECandidate.Proofs.WordStages.Source775
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate695
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate711_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output711 =
    InitECandidate.Proofs.WordStages.source775 := by
  kernel_rfl
#print axioms translate711_eq
end InitECandidate.Proofs.FrontendStages.Word
