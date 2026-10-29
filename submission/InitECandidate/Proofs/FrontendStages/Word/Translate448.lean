import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data448
import InitECandidate.Proofs.WordStages.Source512
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate448_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output448 =
    InitECandidate.Proofs.WordStages.source512 := by
  kernel_rfl
#print axioms translate448_eq
end InitECandidate.Proofs.FrontendStages.Word
