import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data23
import InitECandidate.Proofs.WordStages.Source87
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate7
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate23_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output23 =
    InitECandidate.Proofs.WordStages.source87 := by
  kernel_rfl
#print axioms translate23_eq
end InitECandidate.Proofs.FrontendStages.Word
