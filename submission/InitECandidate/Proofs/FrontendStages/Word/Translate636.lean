import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data636
import InitECandidate.Proofs.WordStages.Source700
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate620
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate636_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output636 =
    InitECandidate.Proofs.WordStages.source700 := by
  kernel_rfl
#print axioms translate636_eq
end InitECandidate.Proofs.FrontendStages.Word
