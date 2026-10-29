import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data75
import InitECandidate.Proofs.WordStages.Source139
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate59
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate75_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output75 =
    InitECandidate.Proofs.WordStages.source139 := by
  kernel_rfl
#print axioms translate75_eq
end InitECandidate.Proofs.FrontendStages.Word
