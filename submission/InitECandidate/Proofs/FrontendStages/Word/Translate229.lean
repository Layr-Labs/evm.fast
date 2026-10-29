import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data229
import InitECandidate.Proofs.WordStages.Source293
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate229_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output229 =
    InitECandidate.Proofs.WordStages.source293 := by
  kernel_rfl
#print axioms translate229_eq
end InitECandidate.Proofs.FrontendStages.Word
