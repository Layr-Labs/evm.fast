import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data34
import InitECandidate.Proofs.WordStages.Source98
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate18
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate34_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output34 =
    InitECandidate.Proofs.WordStages.source98 := by
  kernel_rfl
#print axioms translate34_eq
end InitECandidate.Proofs.FrontendStages.Word
