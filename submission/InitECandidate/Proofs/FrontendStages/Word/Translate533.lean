import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data533
import InitECandidate.Proofs.WordStages.Source597
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate517
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate533_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output533 =
    InitECandidate.Proofs.WordStages.source597 := by
  kernel_rfl
#print axioms translate533_eq
end InitECandidate.Proofs.FrontendStages.Word
