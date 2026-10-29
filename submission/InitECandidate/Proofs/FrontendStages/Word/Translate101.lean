import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data101
import InitECandidate.Proofs.WordStages.Source165
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate101_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output101 =
    InitECandidate.Proofs.WordStages.source165 := by
  kernel_rfl
#print axioms translate101_eq
end InitECandidate.Proofs.FrontendStages.Word
