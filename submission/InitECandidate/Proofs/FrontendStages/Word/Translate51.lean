import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data51
import InitECandidate.Proofs.WordStages.Source115
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate35
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate51_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output51 =
    InitECandidate.Proofs.WordStages.source115 := by
  kernel_rfl
#print axioms translate51_eq
end InitECandidate.Proofs.FrontendStages.Word
