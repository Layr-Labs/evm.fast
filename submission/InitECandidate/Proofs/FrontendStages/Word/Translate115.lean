import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data115
import InitECandidate.Proofs.WordStages.Source179
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate115_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output115 =
    InitECandidate.Proofs.WordStages.source179 := by
  kernel_rfl
#print axioms translate115_eq
end InitECandidate.Proofs.FrontendStages.Word
