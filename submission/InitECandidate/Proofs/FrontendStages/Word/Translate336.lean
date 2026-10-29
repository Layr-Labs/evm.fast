import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data336
import InitECandidate.Proofs.WordStages.Source400
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate336_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output336 =
    InitECandidate.Proofs.WordStages.source400 := by
  kernel_rfl
#print axioms translate336_eq
end InitECandidate.Proofs.FrontendStages.Word
