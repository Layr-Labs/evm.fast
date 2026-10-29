import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data390
import InitECandidate.Proofs.WordStages.Source454
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate390_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output390 =
    InitECandidate.Proofs.WordStages.source454 := by
  kernel_rfl
#print axioms translate390_eq
end InitECandidate.Proofs.FrontendStages.Word
