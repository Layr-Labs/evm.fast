import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data446
import InitECandidate.Proofs.WordStages.Source510
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate446_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output446 =
    InitECandidate.Proofs.WordStages.source510 := by
  kernel_rfl
#print axioms translate446_eq
end InitECandidate.Proofs.FrontendStages.Word
