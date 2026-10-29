import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data676
import InitECandidate.Proofs.WordStages.Source740
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate676_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output676 =
    InitECandidate.Proofs.WordStages.source740 := by
  kernel_rfl
#print axioms translate676_eq
end InitECandidate.Proofs.FrontendStages.Word
