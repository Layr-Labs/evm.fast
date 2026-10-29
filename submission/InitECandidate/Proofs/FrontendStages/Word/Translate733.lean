import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data733
import InitECandidate.Proofs.WordStages.Source797
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate733_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output733 =
    InitECandidate.Proofs.WordStages.source797 := by
  kernel_rfl
#print axioms translate733_eq
end InitECandidate.Proofs.FrontendStages.Word
