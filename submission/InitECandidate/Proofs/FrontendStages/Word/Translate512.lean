import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data512
import InitECandidate.Proofs.WordStages.Source576
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate512_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output512 =
    InitECandidate.Proofs.WordStages.source576 := by
  kernel_rfl
#print axioms translate512_eq
end InitECandidate.Proofs.FrontendStages.Word
