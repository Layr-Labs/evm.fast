import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data680
import InitECandidate.Proofs.WordStages.Source744
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate664
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate680_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output680 =
    InitECandidate.Proofs.WordStages.source744 := by
  kernel_rfl
#print axioms translate680_eq
end InitECandidate.Proofs.FrontendStages.Word
