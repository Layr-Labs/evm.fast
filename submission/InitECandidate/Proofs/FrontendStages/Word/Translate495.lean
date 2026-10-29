import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data495
import InitECandidate.Proofs.WordStages.Source559
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate495_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output495 =
    InitECandidate.Proofs.WordStages.source559 := by
  kernel_rfl
#print axioms translate495_eq
end InitECandidate.Proofs.FrontendStages.Word
