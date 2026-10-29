import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data122
import InitECandidate.Proofs.WordStages.Source186
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate122_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output122 =
    InitECandidate.Proofs.WordStages.source186 := by
  kernel_rfl
#print axioms translate122_eq
end InitECandidate.Proofs.FrontendStages.Word
