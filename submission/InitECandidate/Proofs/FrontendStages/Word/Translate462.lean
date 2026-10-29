import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data462
import InitECandidate.Proofs.WordStages.Source526
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate462_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output462 =
    InitECandidate.Proofs.WordStages.source526 := by
  kernel_rfl
#print axioms translate462_eq
end InitECandidate.Proofs.FrontendStages.Word
