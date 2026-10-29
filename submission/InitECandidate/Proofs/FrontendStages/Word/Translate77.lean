import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data77
import InitECandidate.Proofs.WordStages.Source141
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate61
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate77_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output77 =
    InitECandidate.Proofs.WordStages.source141 := by
  kernel_rfl
#print axioms translate77_eq
end InitECandidate.Proofs.FrontendStages.Word
