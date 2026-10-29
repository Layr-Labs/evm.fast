import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data725
import InitECandidate.Proofs.WordStages.Source789
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate709
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate725_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output725 =
    InitECandidate.Proofs.WordStages.source789 := by
  kernel_rfl
#print axioms translate725_eq
end InitECandidate.Proofs.FrontendStages.Word
