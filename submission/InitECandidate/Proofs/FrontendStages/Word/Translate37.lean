import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data37
import InitECandidate.Proofs.WordStages.Source101
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate21
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate37_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output37 =
    InitECandidate.Proofs.WordStages.source101 := by
  kernel_rfl
#print axioms translate37_eq
end InitECandidate.Proofs.FrontendStages.Word
