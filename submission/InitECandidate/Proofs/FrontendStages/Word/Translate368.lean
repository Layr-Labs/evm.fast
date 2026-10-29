import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data368
import InitECandidate.Proofs.WordStages.Source432
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate368_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output368 =
    InitECandidate.Proofs.WordStages.source432 := by
  kernel_rfl
#print axioms translate368_eq
end InitECandidate.Proofs.FrontendStages.Word
