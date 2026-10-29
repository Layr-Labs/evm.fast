import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data707
import InitECandidate.Proofs.WordStages.Source771
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate691
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate707_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output707 =
    InitECandidate.Proofs.WordStages.source771 := by
  kernel_rfl
#print axioms translate707_eq
end InitECandidate.Proofs.FrontendStages.Word
