import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data522
import InitECandidate.Proofs.WordStages.Source586
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate522_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output522 =
    InitECandidate.Proofs.WordStages.source586 := by
  kernel_rfl
#print axioms translate522_eq
end InitECandidate.Proofs.FrontendStages.Word
