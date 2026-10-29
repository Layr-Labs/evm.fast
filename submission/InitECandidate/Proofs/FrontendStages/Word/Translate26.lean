import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data26
import InitECandidate.Proofs.WordStages.Source90
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate10
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate26_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output26 =
    InitECandidate.Proofs.WordStages.source90 := by
  kernel_rfl
#print axioms translate26_eq
end InitECandidate.Proofs.FrontendStages.Word
