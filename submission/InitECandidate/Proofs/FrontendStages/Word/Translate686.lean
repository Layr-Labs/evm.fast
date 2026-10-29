import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data686
import InitECandidate.Proofs.WordStages.Source750
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate686_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output686 =
    InitECandidate.Proofs.WordStages.source750 := by
  kernel_rfl
#print axioms translate686_eq
end InitECandidate.Proofs.FrontendStages.Word
