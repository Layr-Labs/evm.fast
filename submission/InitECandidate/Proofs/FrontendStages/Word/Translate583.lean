import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data583
import InitECandidate.Proofs.WordStages.Source647
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate567
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate583_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output583 =
    InitECandidate.Proofs.WordStages.source647 := by
  kernel_rfl
#print axioms translate583_eq
end InitECandidate.Proofs.FrontendStages.Word
