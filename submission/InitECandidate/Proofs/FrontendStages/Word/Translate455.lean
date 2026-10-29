import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data455
import InitECandidate.Proofs.WordStages.Source519
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate455_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output455 =
    InitECandidate.Proofs.WordStages.source519 := by
  kernel_rfl
#print axioms translate455_eq
end InitECandidate.Proofs.FrontendStages.Word
