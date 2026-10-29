import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data118
import InitECandidate.Proofs.WordStages.Source182
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate118_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output118 =
    InitECandidate.Proofs.WordStages.source182 := by
  kernel_rfl
#print axioms translate118_eq
end InitECandidate.Proofs.FrontendStages.Word
