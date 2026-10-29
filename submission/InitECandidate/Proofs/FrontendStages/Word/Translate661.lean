import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data661
import InitECandidate.Proofs.WordStages.Source725
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate661_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output661 =
    InitECandidate.Proofs.WordStages.source725 := by
  kernel_rfl
#print axioms translate661_eq
end InitECandidate.Proofs.FrontendStages.Word
