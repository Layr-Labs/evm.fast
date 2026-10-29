import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data510
import InitECandidate.Proofs.WordStages.Source574
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate510_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output510 =
    InitECandidate.Proofs.WordStages.source574 := by
  kernel_rfl
#print axioms translate510_eq
end InitECandidate.Proofs.FrontendStages.Word
