import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data279
import InitECandidate.Proofs.WordStages.Source343
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate279_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output279 =
    InitECandidate.Proofs.WordStages.source343 := by
  kernel_rfl
#print axioms translate279_eq
end InitECandidate.Proofs.FrontendStages.Word
