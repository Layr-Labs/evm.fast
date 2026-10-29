import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data286
import InitECandidate.Proofs.WordStages.Source350
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate286_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output286 =
    InitECandidate.Proofs.WordStages.source350 := by
  kernel_rfl
#print axioms translate286_eq
end InitECandidate.Proofs.FrontendStages.Word
