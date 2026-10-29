import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data775
import InitECandidate.Proofs.WordStages.Source839
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate759
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate775_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output775 =
    InitECandidate.Proofs.WordStages.source839 := by
  kernel_rfl
#print axioms translate775_eq
end InitECandidate.Proofs.FrontendStages.Word
