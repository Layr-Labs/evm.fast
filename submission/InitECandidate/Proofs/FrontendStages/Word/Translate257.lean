import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data257
import InitECandidate.Proofs.WordStages.Source321
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate257_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output257 =
    InitECandidate.Proofs.WordStages.source321 := by
  kernel_rfl
#print axioms translate257_eq
end InitECandidate.Proofs.FrontendStages.Word
