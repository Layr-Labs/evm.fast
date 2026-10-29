import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data97
import InitECandidate.Proofs.WordStages.Source161
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate97_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output97 =
    InitECandidate.Proofs.WordStages.source161 := by
  kernel_rfl
#print axioms translate97_eq
end InitECandidate.Proofs.FrontendStages.Word
