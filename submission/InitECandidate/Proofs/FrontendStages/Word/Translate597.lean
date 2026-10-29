import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data597
import InitECandidate.Proofs.WordStages.Source661
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate581
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate597_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output597 =
    InitECandidate.Proofs.WordStages.source661 := by
  kernel_rfl
#print axioms translate597_eq
end InitECandidate.Proofs.FrontendStages.Word
