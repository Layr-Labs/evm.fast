import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data768
import InitECandidate.Proofs.WordStages.Source832
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate768_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output768 =
    InitECandidate.Proofs.WordStages.source832 := by
  kernel_rfl
#print axioms translate768_eq
end InitECandidate.Proofs.FrontendStages.Word
