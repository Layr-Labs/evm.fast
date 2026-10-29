import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data744
import InitECandidate.Proofs.WordStages.Source808
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate744_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output744 =
    InitECandidate.Proofs.WordStages.source808 := by
  kernel_rfl
#print axioms translate744_eq
end InitECandidate.Proofs.FrontendStages.Word
