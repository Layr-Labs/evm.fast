import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data530
import InitECandidate.Proofs.WordStages.Source594
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate530_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output530 =
    InitECandidate.Proofs.WordStages.source594 := by
  kernel_rfl
#print axioms translate530_eq
end InitECandidate.Proofs.FrontendStages.Word
