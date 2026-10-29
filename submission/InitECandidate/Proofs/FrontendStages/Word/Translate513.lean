import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data513
import InitECandidate.Proofs.WordStages.Source577
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate513_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output513 =
    InitECandidate.Proofs.WordStages.source577 := by
  kernel_rfl
#print axioms translate513_eq
end InitECandidate.Proofs.FrontendStages.Word
