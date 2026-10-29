import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data793
import InitECandidate.Proofs.WordStages.Source857
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate793_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output793 =
    InitECandidate.Proofs.WordStages.source857 := by
  kernel_rfl
#print axioms translate793_eq
end InitECandidate.Proofs.FrontendStages.Word
