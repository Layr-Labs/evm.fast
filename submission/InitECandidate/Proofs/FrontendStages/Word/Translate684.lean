import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data684
import InitECandidate.Proofs.WordStages.Source748
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate684_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output684 =
    InitECandidate.Proofs.WordStages.source748 := by
  kernel_rfl
#print axioms translate684_eq
end InitECandidate.Proofs.FrontendStages.Word
