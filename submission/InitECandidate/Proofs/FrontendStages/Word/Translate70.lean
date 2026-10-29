import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data70
import InitECandidate.Proofs.WordStages.Source134
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate54
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate70_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output70 =
    InitECandidate.Proofs.WordStages.source134 := by
  kernel_rfl
#print axioms translate70_eq
end InitECandidate.Proofs.FrontendStages.Word
