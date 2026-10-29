import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data761
import InitECandidate.Proofs.WordStages.Source825
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate761_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output761 =
    InitECandidate.Proofs.WordStages.source825 := by
  kernel_rfl
#print axioms translate761_eq
end InitECandidate.Proofs.FrontendStages.Word
