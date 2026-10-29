import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data441
import InitECandidate.Proofs.WordStages.Source505
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate441_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output441 =
    InitECandidate.Proofs.WordStages.source505 := by
  kernel_rfl
#print axioms translate441_eq
end InitECandidate.Proofs.FrontendStages.Word
