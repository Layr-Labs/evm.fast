import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data155
import InitECandidate.Proofs.WordStages.Source219
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate155_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output155 =
    InitECandidate.Proofs.WordStages.source219 := by
  kernel_rfl
#print axioms translate155_eq
end InitECandidate.Proofs.FrontendStages.Word
