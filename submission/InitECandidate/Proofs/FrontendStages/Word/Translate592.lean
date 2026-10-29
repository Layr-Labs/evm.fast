import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data592
import InitECandidate.Proofs.WordStages.Source656
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate592_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output592 =
    InitECandidate.Proofs.WordStages.source656 := by
  kernel_rfl
#print axioms translate592_eq
end InitECandidate.Proofs.FrontendStages.Word
