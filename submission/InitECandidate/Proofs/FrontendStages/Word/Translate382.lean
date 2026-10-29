import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data382
import InitECandidate.Proofs.WordStages.Source446
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate382_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output382 =
    InitECandidate.Proofs.WordStages.source446 := by
  kernel_rfl
#print axioms translate382_eq
end InitECandidate.Proofs.FrontendStages.Word
