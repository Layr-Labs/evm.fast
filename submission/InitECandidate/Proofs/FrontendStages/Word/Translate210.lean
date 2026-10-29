import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data210
import InitECandidate.Proofs.WordStages.Source274
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate210_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output210 =
    InitECandidate.Proofs.WordStages.source274 := by
  kernel_rfl
#print axioms translate210_eq
end InitECandidate.Proofs.FrontendStages.Word
