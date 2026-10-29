import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data635
import InitECandidate.Proofs.WordStages.Source699
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate619
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate635_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output635 =
    InitECandidate.Proofs.WordStages.source699 := by
  kernel_rfl
#print axioms translate635_eq
end InitECandidate.Proofs.FrontendStages.Word
