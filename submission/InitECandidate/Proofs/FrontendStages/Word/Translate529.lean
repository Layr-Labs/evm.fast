import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data529
import InitECandidate.Proofs.WordStages.Source593
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate529_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output529 =
    InitECandidate.Proofs.WordStages.source593 := by
  kernel_rfl
#print axioms translate529_eq
end InitECandidate.Proofs.FrontendStages.Word
