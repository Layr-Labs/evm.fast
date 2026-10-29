import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data61
import InitECandidate.Proofs.WordStages.Source125
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate45
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate61_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output61 =
    InitECandidate.Proofs.WordStages.source125 := by
  kernel_rfl
#print axioms translate61_eq
end InitECandidate.Proofs.FrontendStages.Word
