import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data284
import InitECandidate.Proofs.WordStages.Source348
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate284_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output284 =
    InitECandidate.Proofs.WordStages.source348 := by
  kernel_rfl
#print axioms translate284_eq
end InitECandidate.Proofs.FrontendStages.Word
