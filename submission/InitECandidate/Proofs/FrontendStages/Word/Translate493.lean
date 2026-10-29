import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data493
import InitECandidate.Proofs.WordStages.Source557
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate493_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output493 =
    InitECandidate.Proofs.WordStages.source557 := by
  kernel_rfl
#print axioms translate493_eq
end InitECandidate.Proofs.FrontendStages.Word
