import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data614
import InitECandidate.Proofs.WordStages.Source678
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate614_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output614 =
    InitECandidate.Proofs.WordStages.source678 := by
  kernel_rfl
#print axioms translate614_eq
end InitECandidate.Proofs.FrontendStages.Word
