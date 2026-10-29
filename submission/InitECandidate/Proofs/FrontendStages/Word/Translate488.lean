import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data488
import InitECandidate.Proofs.WordStages.Source552
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate488_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output488 =
    InitECandidate.Proofs.WordStages.source552 := by
  kernel_rfl
#print axioms translate488_eq
end InitECandidate.Proofs.FrontendStages.Word
