import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data294
import InitECandidate.Proofs.WordStages.Source358
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate294_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output294 =
    InitECandidate.Proofs.WordStages.source358 := by
  kernel_rfl
#print axioms translate294_eq
end InitECandidate.Proofs.FrontendStages.Word
