import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data120
import InitECandidate.Proofs.WordStages.Source184
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate120_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output120 =
    InitECandidate.Proofs.WordStages.source184 := by
  kernel_rfl
#print axioms translate120_eq
end InitECandidate.Proofs.FrontendStages.Word
