import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data117
import InitECandidate.Proofs.WordStages.Source181
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate117_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output117 =
    InitECandidate.Proofs.WordStages.source181 := by
  kernel_rfl
#print axioms translate117_eq
end InitECandidate.Proofs.FrontendStages.Word
