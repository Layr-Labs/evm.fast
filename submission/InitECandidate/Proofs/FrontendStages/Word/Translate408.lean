import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data408
import InitECandidate.Proofs.WordStages.Source472
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate408_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output408 =
    InitECandidate.Proofs.WordStages.source472 := by
  kernel_rfl
#print axioms translate408_eq
end InitECandidate.Proofs.FrontendStages.Word
