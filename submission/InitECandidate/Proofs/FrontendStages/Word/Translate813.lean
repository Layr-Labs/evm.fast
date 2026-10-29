import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data813
import InitECandidate.Proofs.WordStages.Source877
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate813_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output813 =
    InitECandidate.Proofs.WordStages.source877 := by
  kernel_rfl
#print axioms translate813_eq
end InitECandidate.Proofs.FrontendStages.Word
