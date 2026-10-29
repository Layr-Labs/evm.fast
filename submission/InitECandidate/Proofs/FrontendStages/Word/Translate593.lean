import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data593
import InitECandidate.Proofs.WordStages.Source657
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate593_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output593 =
    InitECandidate.Proofs.WordStages.source657 := by
  kernel_rfl
#print axioms translate593_eq
end InitECandidate.Proofs.FrontendStages.Word
