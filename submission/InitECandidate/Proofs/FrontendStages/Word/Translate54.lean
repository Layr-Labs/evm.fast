import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data54
import InitECandidate.Proofs.WordStages.Source118
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate38
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate54_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output54 =
    InitECandidate.Proofs.WordStages.source118 := by
  kernel_rfl
#print axioms translate54_eq
end InitECandidate.Proofs.FrontendStages.Word
