import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data207
import InitECandidate.Proofs.WordStages.Source271
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate207_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output207 =
    InitECandidate.Proofs.WordStages.source271 := by
  kernel_rfl
#print axioms translate207_eq
end InitECandidate.Proofs.FrontendStages.Word
