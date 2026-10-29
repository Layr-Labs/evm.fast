import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data778
import InitECandidate.Proofs.WordStages.Source842
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate778_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output778 =
    InitECandidate.Proofs.WordStages.source842 := by
  kernel_rfl
#print axioms translate778_eq
end InitECandidate.Proofs.FrontendStages.Word
