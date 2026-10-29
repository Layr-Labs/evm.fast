import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data618
import InitECandidate.Proofs.WordStages.Source682
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate618_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output618 =
    InitECandidate.Proofs.WordStages.source682 := by
  kernel_rfl
#print axioms translate618_eq
end InitECandidate.Proofs.FrontendStages.Word
