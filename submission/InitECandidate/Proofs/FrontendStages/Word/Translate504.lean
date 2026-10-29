import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data504
import InitECandidate.Proofs.WordStages.Source568
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate504_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output504 =
    InitECandidate.Proofs.WordStages.source568 := by
  kernel_rfl
#print axioms translate504_eq
end InitECandidate.Proofs.FrontendStages.Word
