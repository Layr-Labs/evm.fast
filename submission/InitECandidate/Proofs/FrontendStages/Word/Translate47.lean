import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data47
import InitECandidate.Proofs.WordStages.Source111
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate31
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate47_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output47 =
    InitECandidate.Proofs.WordStages.source111 := by
  kernel_rfl
#print axioms translate47_eq
end InitECandidate.Proofs.FrontendStages.Word
