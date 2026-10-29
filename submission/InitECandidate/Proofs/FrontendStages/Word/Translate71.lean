import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data71
import InitECandidate.Proofs.WordStages.Source135
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate55
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate71_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output71 =
    InitECandidate.Proofs.WordStages.source135 := by
  kernel_rfl
#print axioms translate71_eq
end InitECandidate.Proofs.FrontendStages.Word
