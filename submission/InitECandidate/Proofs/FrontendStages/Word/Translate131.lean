import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data131
import InitECandidate.Proofs.WordStages.Source195
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate131_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output131 =
    InitECandidate.Proofs.WordStages.source195 := by
  kernel_rfl
#print axioms translate131_eq
end InitECandidate.Proofs.FrontendStages.Word
