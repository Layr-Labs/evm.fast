import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data114
import InitECandidate.Proofs.WordStages.Source178
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate114_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output114 =
    InitECandidate.Proofs.WordStages.source178 := by
  kernel_rfl
#print axioms translate114_eq
end InitECandidate.Proofs.FrontendStages.Word
