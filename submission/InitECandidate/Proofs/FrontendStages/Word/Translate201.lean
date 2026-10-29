import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data201
import InitECandidate.Proofs.WordStages.Source265
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate201_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output201 =
    InitECandidate.Proofs.WordStages.source265 := by
  kernel_rfl
#print axioms translate201_eq
end InitECandidate.Proofs.FrontendStages.Word
