import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data729
import InitECandidate.Proofs.WordStages.Source793
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate713
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate729_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output729 =
    InitECandidate.Proofs.WordStages.source793 := by
  kernel_rfl
#print axioms translate729_eq
end InitECandidate.Proofs.FrontendStages.Word
