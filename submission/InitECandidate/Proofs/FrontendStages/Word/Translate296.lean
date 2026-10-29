import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data296
import InitECandidate.Proofs.WordStages.Source360
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate296_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output296 =
    InitECandidate.Proofs.WordStages.source360 := by
  kernel_rfl
#print axioms translate296_eq
end InitECandidate.Proofs.FrontendStages.Word
