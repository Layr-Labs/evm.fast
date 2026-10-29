import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data464
import InitECandidate.Proofs.WordStages.Source528
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate464_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output464 =
    InitECandidate.Proofs.WordStages.source528 := by
  kernel_rfl
#print axioms translate464_eq
end InitECandidate.Proofs.FrontendStages.Word
