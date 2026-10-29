import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data332
import InitECandidate.Proofs.WordStages.Source396
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate332_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output332 =
    InitECandidate.Proofs.WordStages.source396 := by
  kernel_rfl
#print axioms translate332_eq
end InitECandidate.Proofs.FrontendStages.Word
