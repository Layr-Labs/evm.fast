import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data426
import InitECandidate.Proofs.WordStages.Source490
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate426_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output426 =
    InitECandidate.Proofs.WordStages.source490 := by
  kernel_rfl
#print axioms translate426_eq
end InitECandidate.Proofs.FrontendStages.Word
