import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data48
import InitECandidate.Proofs.WordStages.Source112
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate32
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate48_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output48 =
    InitECandidate.Proofs.WordStages.source112 := by
  kernel_rfl
#print axioms translate48_eq
end InitECandidate.Proofs.FrontendStages.Word
