import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data31
import InitECandidate.Proofs.WordStages.Source95
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate15
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate31_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output31 =
    InitECandidate.Proofs.WordStages.source95 := by
  kernel_rfl
#print axioms translate31_eq
end InitECandidate.Proofs.FrontendStages.Word
