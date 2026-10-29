import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data30
import InitECandidate.Proofs.WordStages.Source94
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate14
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate30_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output30 =
    InitECandidate.Proofs.WordStages.source94 := by
  kernel_rfl
#print axioms translate30_eq
end InitECandidate.Proofs.FrontendStages.Word
