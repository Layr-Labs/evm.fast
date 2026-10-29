import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data605
import InitECandidate.Proofs.WordStages.Source669
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate605_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output605 =
    InitECandidate.Proofs.WordStages.source669 := by
  kernel_rfl
#print axioms translate605_eq
end InitECandidate.Proofs.FrontendStages.Word
