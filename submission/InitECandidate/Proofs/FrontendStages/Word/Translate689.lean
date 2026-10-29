import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data689
import InitECandidate.Proofs.WordStages.Source753
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate689_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output689 =
    InitECandidate.Proofs.WordStages.source753 := by
  kernel_rfl
#print axioms translate689_eq
end InitECandidate.Proofs.FrontendStages.Word
