import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data450
import InitECandidate.Proofs.WordStages.Source514
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate450_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output450 =
    InitECandidate.Proofs.WordStages.source514 := by
  kernel_rfl
#print axioms translate450_eq
end InitECandidate.Proofs.FrontendStages.Word
