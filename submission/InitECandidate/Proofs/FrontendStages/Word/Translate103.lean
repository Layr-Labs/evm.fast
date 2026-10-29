import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data103
import InitECandidate.Proofs.WordStages.Source167
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate103_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output103 =
    InitECandidate.Proofs.WordStages.source167 := by
  kernel_rfl
#print axioms translate103_eq
end InitECandidate.Proofs.FrontendStages.Word
