import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data692
import InitECandidate.Proofs.WordStages.Source756
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate692_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output692 =
    InitECandidate.Proofs.WordStages.source756 := by
  kernel_rfl
#print axioms translate692_eq
end InitECandidate.Proofs.FrontendStages.Word
