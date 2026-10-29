import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data681
import InitECandidate.Proofs.WordStages.Source745
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate665
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate681_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output681 =
    InitECandidate.Proofs.WordStages.source745 := by
  kernel_rfl
#print axioms translate681_eq
end InitECandidate.Proofs.FrontendStages.Word
