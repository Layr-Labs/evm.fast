import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data742
import InitECandidate.Proofs.WordStages.Source806
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate742_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output742 =
    InitECandidate.Proofs.WordStages.source806 := by
  kernel_rfl
#print axioms translate742_eq
end InitECandidate.Proofs.FrontendStages.Word
