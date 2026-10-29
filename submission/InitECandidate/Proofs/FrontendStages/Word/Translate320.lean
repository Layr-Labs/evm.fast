import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data320
import InitECandidate.Proofs.WordStages.Source384
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate320_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output320 =
    InitECandidate.Proofs.WordStages.source384 := by
  kernel_rfl
#print axioms translate320_eq
end InitECandidate.Proofs.FrontendStages.Word
