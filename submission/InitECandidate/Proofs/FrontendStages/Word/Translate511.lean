import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data511
import InitECandidate.Proofs.WordStages.Source575
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate511_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output511 =
    InitECandidate.Proofs.WordStages.source575 := by
  kernel_rfl
#print axioms translate511_eq
end InitECandidate.Proofs.FrontendStages.Word
