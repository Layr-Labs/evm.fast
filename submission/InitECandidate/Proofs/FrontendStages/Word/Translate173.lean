import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data173
import InitECandidate.Proofs.WordStages.Source237
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate173_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output173 =
    InitECandidate.Proofs.WordStages.source237 := by
  kernel_rfl
#print axioms translate173_eq
end InitECandidate.Proofs.FrontendStages.Word
