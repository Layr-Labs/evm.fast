import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data594
import InitECandidate.Proofs.WordStages.Source658
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate594_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output594 =
    InitECandidate.Proofs.WordStages.source658 := by
  kernel_rfl
#print axioms translate594_eq
end InitECandidate.Proofs.FrontendStages.Word
