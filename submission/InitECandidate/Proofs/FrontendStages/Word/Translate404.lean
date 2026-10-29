import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data404
import InitECandidate.Proofs.WordStages.Source468
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate404_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output404 =
    InitECandidate.Proofs.WordStages.source468 := by
  kernel_rfl
#print axioms translate404_eq
end InitECandidate.Proofs.FrontendStages.Word
