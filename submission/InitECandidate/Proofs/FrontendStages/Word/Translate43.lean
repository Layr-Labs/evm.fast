import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data43
import InitECandidate.Proofs.WordStages.Source107
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate27
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate43_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output43 =
    InitECandidate.Proofs.WordStages.source107 := by
  kernel_rfl
#print axioms translate43_eq
end InitECandidate.Proofs.FrontendStages.Word
