import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data621
import InitECandidate.Proofs.WordStages.Source685
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate605
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate621_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output621 =
    InitECandidate.Proofs.WordStages.source685 := by
  kernel_rfl
#print axioms translate621_eq
end InitECandidate.Proofs.FrontendStages.Word
