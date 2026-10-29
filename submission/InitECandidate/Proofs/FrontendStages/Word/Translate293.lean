import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data293
import InitECandidate.Proofs.WordStages.Source357
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate293_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output293 =
    InitECandidate.Proofs.WordStages.source357 := by
  kernel_rfl
#print axioms translate293_eq
end InitECandidate.Proofs.FrontendStages.Word
