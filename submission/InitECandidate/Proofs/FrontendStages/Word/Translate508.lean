import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data508
import InitECandidate.Proofs.WordStages.Source572
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate508_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output508 =
    InitECandidate.Proofs.WordStages.source572 := by
  kernel_rfl
#print axioms translate508_eq
end InitECandidate.Proofs.FrontendStages.Word
