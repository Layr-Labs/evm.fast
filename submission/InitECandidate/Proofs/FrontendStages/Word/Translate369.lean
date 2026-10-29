import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data369
import InitECandidate.Proofs.WordStages.Source433
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate353
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate369_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output369 =
    InitECandidate.Proofs.WordStages.source433 := by
  kernel_rfl
#print axioms translate369_eq
end InitECandidate.Proofs.FrontendStages.Word
