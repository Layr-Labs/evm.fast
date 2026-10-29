import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data25
import InitECandidate.Proofs.WordStages.Source89
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate9
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate25_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output25 =
    InitECandidate.Proofs.WordStages.source89 := by
  kernel_rfl
#print axioms translate25_eq
end InitECandidate.Proofs.FrontendStages.Word
