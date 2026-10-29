import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data781
import InitECandidate.Proofs.WordStages.Source845
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate765
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate781_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output781 =
    InitECandidate.Proofs.WordStages.source845 := by
  kernel_rfl
#print axioms translate781_eq
end InitECandidate.Proofs.FrontendStages.Word
