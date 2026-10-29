import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data449
import InitECandidate.Proofs.WordStages.Source513
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate449_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output449 =
    InitECandidate.Proofs.WordStages.source513 := by
  kernel_rfl
#print axioms translate449_eq
end InitECandidate.Proofs.FrontendStages.Word
