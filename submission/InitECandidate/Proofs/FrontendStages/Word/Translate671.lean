import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data671
import InitECandidate.Proofs.WordStages.Source735
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate671_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output671 =
    InitECandidate.Proofs.WordStages.source735 := by
  kernel_rfl
#print axioms translate671_eq
end InitECandidate.Proofs.FrontendStages.Word
