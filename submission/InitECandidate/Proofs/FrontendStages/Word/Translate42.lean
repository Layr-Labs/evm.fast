import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data42
import InitECandidate.Proofs.WordStages.Source106
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate26
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate42_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output42 =
    InitECandidate.Proofs.WordStages.source106 := by
  kernel_rfl
#print axioms translate42_eq
end InitECandidate.Proofs.FrontendStages.Word
