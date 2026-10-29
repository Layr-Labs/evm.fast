import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data619
import InitECandidate.Proofs.WordStages.Source683
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate603
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate619_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output619 =
    InitECandidate.Proofs.WordStages.source683 := by
  kernel_rfl
#print axioms translate619_eq
end InitECandidate.Proofs.FrontendStages.Word
