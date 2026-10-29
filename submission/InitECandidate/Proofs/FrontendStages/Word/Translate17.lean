import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data17
import InitECandidate.Proofs.WordStages.Source81
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate17_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output17 =
    InitECandidate.Proofs.WordStages.source81 := by
  kernel_rfl
#print axioms translate17_eq
end InitECandidate.Proofs.FrontendStages.Word
