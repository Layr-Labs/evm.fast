import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data565
import InitECandidate.Proofs.WordStages.Source629
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate549
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate565_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output565 =
    InitECandidate.Proofs.WordStages.source629 := by
  kernel_rfl
#print axioms translate565_eq
end InitECandidate.Proofs.FrontendStages.Word
