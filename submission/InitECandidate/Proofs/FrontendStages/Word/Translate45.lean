import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data45
import InitECandidate.Proofs.WordStages.Source109
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate29
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate45_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output45 =
    InitECandidate.Proofs.WordStages.source109 := by
  kernel_rfl
#print axioms translate45_eq
end InitECandidate.Proofs.FrontendStages.Word
